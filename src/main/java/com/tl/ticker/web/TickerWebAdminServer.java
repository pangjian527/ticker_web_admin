package com.tl.ticker.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Created by pangjian on 16-12-28.
 */
@EnableAutoConfiguration
@SpringBootApplication
public class TickerWebAdminServer  {

    public static void main(String[] args ){
        SpringApplication.run(TickerWebAdminServer.class,args);
    }

}

