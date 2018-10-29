package com.fb.banksystem;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@MapperScan("com.fb.banksystem.dao")
@ComponentScan({"com.fb.banksystem.*","com.fb.banksystem.service.impl"})
public class BanksystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(BanksystemApplication.class, args);
    }
}
