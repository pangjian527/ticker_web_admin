package com.tl.ticker.web.action;

import com.tl.rpc.base.BaseData;
import com.tl.rpc.base.BaseDataService;
import com.tl.rpc.common.ServiceToken;
import com.tl.rpc.consumer.Consumer;
import com.tl.rpc.consumer.ConsumerService;
import com.tl.rpc.order.Order;
import com.tl.rpc.order.OrderService;
import com.tl.rpc.product.PRODUCTSTATUS;
import com.tl.rpc.product.Product;
import com.tl.rpc.product.ProductService;
import com.tl.rpc.product.SearchProductResult;
import com.tl.rpc.recharge.Recharge;
import com.tl.rpc.recharge.RechargeService;
import com.tl.ticker.web.action.entity.PageResult;
import com.tl.ticker.web.action.entity.ProductResult;
import com.tl.ticker.web.action.entity.ResultJson;
import com.tl.ticker.web.common.Constant;
import com.tl.ticker.web.util.JsonUtil;
import com.tl.ticker.web.util.StrFunUtil;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

/**
 * Created by pangjian on 16-12-7.
 */
@Controller
public class ProductAction {

    @RequestMapping("/admin/product/search")
    public String search(Model model , HttpServletRequest request) throws Exception{

        int offset = StrFunUtil.valueInt(request.getParameter("offset"),0);
        int limit = StrFunUtil.valueInt(request.getParameter("limit"),15);

        ServiceToken token = new ServiceToken();
        SearchProductResult productResult = productService.searchProduct(token, limit, offset);

        List<ProductResult> listResult = new LinkedList<ProductResult>();
        for (Product product : productResult.getResult()) {
            listResult.add(ProductResult.fromProductResult(product));
        }

        String url = "/admin/product/search";
        model.addAttribute("listResult",listResult);
        model.addAttribute("pageResult",new PageResult(productResult.getTotalCount(),limit,offset,url));

        return "product/product_list";
    }

    @RequestMapping("/admin/product/post")
    public String postProduct(Model model ,String productId,int year) throws Exception{

        List<BaseData> baseDatas = baseDataService.searchBaseData(new ServiceToken(), year);
        //生肖分组
        Map<String, List<BaseData>> baseMap = groupBaseData(baseDatas);
        //波色分组
        Map<String, List<BaseData>> colorMap = gruopBaseDataByColor(baseDatas);

        if(StringUtils.isNotBlank(productId)){
            Product product = productService.getByProductId(new ServiceToken(), productId);
            model.addAttribute("product",product);
        }else{
            model.addAttribute("product",new Product());
        }

        model.addAttribute("baseMap",baseMap);
        model.addAttribute("colorMap",colorMap);
        model.addAttribute("year",year);

        return "product/post_product";
    }

    private Map<String,List<BaseData>> gruopBaseDataByColor(List<BaseData> list){
        Map<String,List<BaseData>> map = new HashMap<String, List<BaseData>>();

        for (BaseData baseData : list) {
            if(map.containsKey(baseData.getColorCode())){
                map.get(baseData.getColorCode()).add(baseData);
            }else{
                List<BaseData> itemList = new ArrayList<BaseData>();
                itemList.add(baseData);

                map.put(baseData.getColorCode(),itemList);
            }
        }
        return map;
    }

    private Map<String,List<BaseData>> groupBaseData(List<BaseData> list){
        Map<String,List<BaseData>> map = new HashMap<String, List<BaseData>>();

        for (BaseData baseData : list) {
            if(map.containsKey(baseData.getZodiacCode())){
                map.get(baseData.getZodiacCode()).add(baseData);
            }else{
                List<BaseData> itemList = new ArrayList<BaseData>();
                itemList.add(baseData);

                map.put(baseData.getZodiacCode(),itemList);
            }
        }
        return map;
    }

    @RequestMapping("/admin/product/save")
    public String save(Model model,String title,int year,
                       long balance,int stage,
                       String id,String mobile
            ,String expect,int virtualCount,String probability,int limitCount) throws Exception{

        Product product = null;
        ServiceToken token = new ServiceToken();
        if(StringUtils.isNotBlank(id)){
            product = productService.getByProductId(token,id);

        }else{
            product = new Product();
            product.setCreateTime(new Date().getTime());
            product.setStatus(PRODUCTSTATUS.SALE);
            product.setUpdateTime(new Date().getTime());
        }

        product.setYear(year);
        product.setStage(stage);
        product.setTitle(title);
        product.setBalance(balance);
        product.setExpect(expect);
        product.setMobile(mobile);
        product.setProbability(probability);
        product.setVirtualCount(virtualCount);
        product.setLimitCount(limitCount);

        productService.saveProduct(token,product);

        return ResultJson.returnSuccess("发表成功",model);
    }

    @ResponseBody
    @RequestMapping("/admin/product/refund")
    public String refundAmount(String productId) throws Exception{

        ServiceToken token = new ServiceToken();

        Product product = productService.getByProductId(token, productId);

        List<Order> orderList = orderService.getOrderByProductId(token, product.getId());

        for (Order order : orderList) {
            Consumer consumer = consumerService.getById(token, order.getUserId());

            long time = new Date().getTime();
            Recharge recharge = new Recharge();
            recharge.setAmount(0);
            recharge.setCreateTime(time);
            recharge.setSource("refund");
            recharge.setGiveAmount(order.getAmount());
            recharge.setUserId(consumer.getId());

            consumer.setBalance(consumer.getBalance()+order.getAmount());

            consumerService.saveConsumer(token,consumer);
            rechargeService.saveRecharge(token,recharge);
        }

        product.setStatus(PRODUCTSTATUS.REFUND);
        product.setUpdateTime(new Date().getTime());
        productService.saveProduct(token,product);

        return JsonUtil.toString(new ResultJson(true));
    }

    @ResponseBody
    @RequestMapping("/admin/product/get")
    public String get(Model model,String productId) throws Exception{
        ServiceToken token = new ServiceToken();

        Product  product = productService.getByProductId(token,productId);

        return JsonUtil.toString(product);
    }

    @ResponseBody
    @RequestMapping("/admin/product/update_virtual_count")
    public String updateVirtualCount(Model model,String productId,int virtualCount) throws Exception{
        ServiceToken token = new ServiceToken();

        Product  product = productService.getByProductId(token,productId);
        product.setVirtualCount(virtualCount);

        productService.saveProduct(token,product);
        return JsonUtil.toString(new ResultJson(true));
    }

    @Autowired
    private ProductService productService;
    @Autowired
    private BaseDataService baseDataService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private ConsumerService consumerService;
    @Autowired
    private RechargeService rechargeService;

}
