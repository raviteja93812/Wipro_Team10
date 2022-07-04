package com.wipro.hrms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class TheSuperStore {

	public static void main(String[] args) {
		SpringApplication.run(TheSuperStore.class, args);
		System.out.println("Ok its perfectly working!");
	}

}
