package com.tl.ticker.web.action.entity;

import com.tl.rpc.product.Product;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.util.Date;

/**
 * Created by pangjian on 16-12-7.
 */
public class ProductResult {

    public String id;

    public String expect;

    public double balance;

    public Date createTime;

    public int year;

    public int stage;

    public Date updateTime;

    public String status;

    public String title;

    public String mobile;

    public int virtualCount;

    public String probability;

    public static ProductResult fromProductResult(Product product){

        ProductResult result = new ProductResult();
        result.balance = product.getBalance();
        result.createTime = new Date(product.getCreateTime());
        result.expect = product.getExpect();
        result.id = product.getId();
        result.mobile = product.getMobile();
        result.stage = product.getStage();
        result.title = product.getTitle();
        result.updateTime = new Date(product.getUpdateTime());
        result.year = product.getYear();
        result.status = product.getStatus().name();
        result.virtualCount = product.getVirtualCount();
        result.probability = product.getProbability();

        return result;
    }

    public String getContent(){
        JSONArray jsonArray = JSONArray.fromObject(this.expect);

        StringBuilder content = new StringBuilder("");

        for (int i=0 ;i<jsonArray.size();i++) {
            JSONObject jsonObject = jsonArray.getJSONObject(i);
            content.append("<div style='color:#333;height:25px;line-height:25px;font-weight: bold;'>");
            content.append(jsonObject.getString("name")+"&nbsp;|&nbsp;");

            JSONArray numbers = jsonObject.getJSONArray("numbers");

            for (int j=0 ;j<numbers.size();j++){
                content.append(numbers.getInt(j)).append("、");
            }

            content.append("</div>");
        }
        return content.toString();
    }
}
