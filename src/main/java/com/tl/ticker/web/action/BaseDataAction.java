package com.tl.ticker.web.action;

import com.tl.rpc.base.BaseData;
import com.tl.rpc.base.BaseDataService;
import com.tl.rpc.common.ServiceToken;
import com.tl.rpc.lottery.LotteryData;
import com.tl.rpc.lottery.LotteryDataService;
import com.tl.rpc.lottery.SearchResult;
import com.tl.ticker.web.action.entity.LotteryDataResult;
import com.tl.ticker.web.action.entity.ResultJson;
import com.tl.ticker.web.util.StrFunUtil;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by pangjian on 16-12-29.
 */
@Controller
public class BaseDataAction {


    @RequestMapping("/admin/base/data/search")
    public String execute(Model model, HttpSession session) throws Exception{

        ServiceToken token = new ServiceToken();
        List<BaseData> baseDatas = baseDataService.searchBaseData(token, 2016);

        Map<String,List<BaseData>> baseMap = groupBaseData(baseDatas);

        SearchResult searchResult = lotteryDataService.searchLotteryData(token, 2016, 30, 0);

        List<LotteryDataResult> listLotteryResult = new LinkedList<LotteryDataResult>();

        for (LotteryData lotteryData :searchResult.getResult()) {
            LotteryDataResult lotteryDataResult = LotteryDataResult.fromLotteryDataResult(lotteryData);
            BaseData baseData = baseDataService.getBaseDataByNumber(token, lotteryData.getNumber() + "", 2016);
            lotteryDataResult.zodiacCode = baseData.getZodiacCode();
            lotteryDataResult.colorCode = baseData.getColorCode();

            listLotteryResult.add(lotteryDataResult);
        }

        model.addAttribute("lotteryList",listLotteryResult);
        model.addAttribute("baseMap",baseMap);

        return "basedata/baselist";
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

    @RequestMapping("/admin/base/data/to_lottery")
    public String toLottery(Model model){
        return "basedata/add_lottery";
    }

    @RequestMapping("/admin/base/data/save_lottery")
    public String saveLottery(HttpServletRequest request,Model model) throws Exception{

        int number = StrFunUtil.valueInt(request.getParameter("number"));
        int year = StrFunUtil.valueInt(request.getParameter("year"));
        int stage = StrFunUtil.valueInt(request.getParameter("stage"));
        String lotterTime = request.getParameter("lotterTime");

        int flatNumber1 = StrFunUtil.valueInt(request.getParameter("flatNumber1"));
        int flatNumber2 = StrFunUtil.valueInt(request.getParameter("flatNumber2"));
        int flatNumber3 = StrFunUtil.valueInt(request.getParameter("flatNumber3"));
        int flatNumber4 = StrFunUtil.valueInt(request.getParameter("flatNumber4"));
        int flatNumber5 = StrFunUtil.valueInt(request.getParameter("flatNumber5"));
        int flatNumber6 = StrFunUtil.valueInt(request.getParameter("flatNumber6"));

        LotteryData lotteryData = new LotteryData();

        lotteryData.setNumber(number);
        lotteryData.setYear(year);
        lotteryData.setStage(stage);

        Date date = new SimpleDateFormat("yyyy-MM-dd").parse("2005-06-09");
        lotteryData.setLotteryTime(date.getTime());

        lotteryData.setFlatNumber1(flatNumber1);
        lotteryData.setFlatNumber2(flatNumber2);
        lotteryData.setFlatNumber3(flatNumber3);
        lotteryData.setFlatNumber4(flatNumber4);
        lotteryData.setFlatNumber5(flatNumber5);
        lotteryData.setFlatNumber6(flatNumber6);
        lotteryData.setCreateTime(new Date().getTime());
        lotteryData.setUpdateTime(new Date().getTime());

        lotteryDataService.saveLotteryData(new ServiceToken(),lotteryData);

        return ResultJson.returnSuccess("发表成功",model);
    }

    @Autowired
    private BaseDataService baseDataService;
    @Autowired
    private LotteryDataService lotteryDataService;

}
