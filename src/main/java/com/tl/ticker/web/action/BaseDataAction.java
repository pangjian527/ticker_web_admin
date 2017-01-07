package com.tl.ticker.web.action;

import com.tl.rpc.base.BaseData;
import com.tl.rpc.base.BaseDataService;
import com.tl.rpc.common.ServiceToken;
import com.tl.rpc.lottery.LotteryData;
import com.tl.rpc.lottery.LotteryDataService;
import com.tl.rpc.lottery.SearchResult;
import com.tl.ticker.web.action.entity.LotteryDataResult;
import com.tl.ticker.web.action.entity.ResultJson;
import com.tl.ticker.web.common.Constant;
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
        List<BaseData> baseDatas = baseDataService.searchBaseData(token, Constant.CURRENT_2017_YEAR);
        List<BaseData> base2016Datas = baseDataService.searchBaseData(token, Constant.CURRENT_2016_YEAR);

        Map<String,List<BaseData>> baseMap = groupBaseData(baseDatas);

        Map<String,List<BaseData>> base2016Map = groupBaseData(base2016Datas);

        SearchResult searchResult = lotteryDataService.searchLotteryData(token,0, 30, 0);

        List<LotteryDataResult> listLotteryResult = new LinkedList<LotteryDataResult>();

        for (LotteryData lotteryData :searchResult.getResult()) {
            LotteryDataResult lotteryDataResult = LotteryDataResult.fromLotteryDataResult(lotteryData);
            BaseData baseData = baseDataService.getBaseDataByNumber(token, lotteryData.getNumber() , lotteryData.getYear());
            lotteryDataResult.zodiacCode = baseData.getZodiacCode();
            lotteryDataResult.colorCode = baseData.getColorCode();

            BaseData baseData1 = baseDataService.getBaseDataByNumber(token, lotteryData.getFlatNumber1(),lotteryData.getYear());
            BaseData baseData2 = baseDataService.getBaseDataByNumber(token, lotteryData.getFlatNumber2(),lotteryData.getYear());
            BaseData baseData3 = baseDataService.getBaseDataByNumber(token, lotteryData.getFlatNumber3(),lotteryData.getYear());
            BaseData baseData4 = baseDataService.getBaseDataByNumber(token, lotteryData.getFlatNumber4(),lotteryData.getYear());
            BaseData baseData5 = baseDataService.getBaseDataByNumber(token, lotteryData.getFlatNumber5(),lotteryData.getYear());
            BaseData baseData6 = baseDataService.getBaseDataByNumber(token, lotteryData.getFlatNumber6(),lotteryData.getYear());

            lotteryDataResult.colorCode1 = baseData1.getColorCode();
            lotteryDataResult.colorCode2 = baseData2.getColorCode();
            lotteryDataResult.colorCode3 = baseData3.getColorCode();
            lotteryDataResult.colorCode4 = baseData4.getColorCode();
            lotteryDataResult.colorCode5 = baseData5.getColorCode();
            lotteryDataResult.colorCode6 = baseData6.getColorCode();

            listLotteryResult.add(lotteryDataResult);
        }

        model.addAttribute("lotteryList",listLotteryResult);
        model.addAttribute("baseMap",baseMap);
        model.addAttribute("base2016Map",base2016Map);

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
        String lotteryTime = request.getParameter("lotteryTime");

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

        Date date = new SimpleDateFormat("yyyy-MM-dd").parse(lotteryTime);
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

        return ResultJson.returnSuccess("添加成功",model);
    }

    @RequestMapping("/admin/base/to_base_data")
    public String toBaseData(){
        return "basedata/add_base";
    }

    @RequestMapping("/admin/base/data/save_base_data")
    public String saveBaseData(HttpServletRequest request,Model model) throws Exception{

        int number = StrFunUtil.valueInt(request.getParameter("number"));
        int year = StrFunUtil.valueInt(request.getParameter("year"));
        String colorCode = request.getParameter("colorCode");
        String zodiacCode = request.getParameter("zodiacCode");

        BaseData baseData = new BaseData();
        baseData.setYear(year);
        baseData.setZodiacCode(zodiacCode);
        baseData.setNumber(number);
        baseData.setColorCode(colorCode);
        baseData.setSeq(1);

        baseDataService.saveBaseData(new ServiceToken(),baseData);

        return ResultJson.returnSuccess("添加成功",model);
    }

    @Autowired
    private BaseDataService baseDataService;
    @Autowired
    private LotteryDataService lotteryDataService;

}
