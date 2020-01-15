package com.example.samplejsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SampleJSPController {

    @RequestMapping(value="/")
    public String root() {
        return "viewSample";
    }

}
