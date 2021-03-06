package com.sillybin.xmall;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan
@EnableAutoConfiguration
public class IndexApplication {
	public static void main(String[] args) {
		SpringApplication.run(IndexApplication.class, args);
	}
}
