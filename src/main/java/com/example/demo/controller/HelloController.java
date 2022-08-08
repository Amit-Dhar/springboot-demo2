package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    //Main controller
    @GetMapping("/")
    public String index() {
        return "Amit, greetings from Spring Boot!";
    }

}
