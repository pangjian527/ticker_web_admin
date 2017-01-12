package com.tl.ticker.web.action;

import com.tl.rpc.base.BaseData;
import com.tl.rpc.base.BaseDataService;
import com.tl.rpc.common.ServiceToken;
import com.tl.rpc.product.PRODUCTSTATUS;
import com.tl.rpc.product.Product;
import com.tl.rpc.product.ProductService;
import com.tl.rpc.product.SearchProductResult;
import com.tl.ticker.web.action.entity.PageResult;
import com.tl.ticker.web.action.entity.ProductResult;
import com.tl.ticker.web.action.entity.ResultJson;
import com.tl.ticker.web.common.Constant;
import com.tl.ticker.web.util.StrFunUtil;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @Autowired
    private ProductService productService;
    @Autowired
    private BaseDataService baseDataService;

}
