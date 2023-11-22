package com.github.cuidok.component.springboot.maven.multi.env;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringBootMavenMultiEnvApplication {

    private static String ACTIVE_PROFILE;

    public SpringBootMavenMultiEnvApplication(@Value("${spring.profiles.active}") String activeProfile) {
        ACTIVE_PROFILE = activeProfile;
    }

    public static void main(String[] args) {
        SpringApplication.run(SpringBootMavenMultiEnvApplication.class, args);
        System.out.println("spring.profiles.active: " + ACTIVE_PROFILE);
    }

}
