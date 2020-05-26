package com.example.samplejsp.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import kcb.module.v3.OkCert;
import kcb.module.v3.exception.OkCertException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ConcurrentModel;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class RestTestController {

    @GetMapping("/certMain")
    public String certMain()
    {
        return "phone_popup1";
    }

    @GetMapping("/certStart")
    public String cert(Model model) throws JsonProcessingException, OkCertException {
        OkCert cert = new OkCert();
        String target = "PROD";
        String cpCd = "V34460000000";
        String svcName = "IDS_HS_POPUP_START";
        String license = "C:\\Users\\USER\\Desktop\\Desktop\\" + cpCd + "_IDS_01_" + target + "_AES_license.dat";

        Map<String, String> params = new HashMap<>();
        params.put("RETURN_URL", "http://localhost:8080/certResult");
        params.put("SITE_NAME", "tason.com");
        params.put("SITE_URL", "tason.com");
        params.put("RQST_CAUS_CD", "00");

        ObjectMapper mapper = new ObjectMapper();
        String jsonStr = mapper.writeValueAsString(params);
        String result = cert.callOkCert(target, cpCd, svcName, license, jsonStr);
        System.out.println("result start :: " + result);

        Map<String, String> results = mapper.readValue(result, HashMap.class);
        model.addAllAttributes(results);
        model.addAttribute("commonSvlUrl", "https://safe.ok-name.co.kr/CommonSvl");

        return "phone_popup2";
    }

    @GetMapping("/certResult")
    public String certResult(HttpServletRequest request, Model model) throws JsonProcessingException, OkCertException {

        OkCert cert = new OkCert();
        String target = "PROD";
        String cpCd = "V34460000000";
        String svcName = "IDS_HS_POPUP_RESULT";
        String license = "C:\\Users\\USER\\Desktop\\Desktop\\" + cpCd + "_IDS_01_" + target + "_AES_license.dat";
        String tkn = (String) request.getParameter("mdl_tkn");

        Map<String, String> params = new HashMap<>();
        params.put("MDL_TKN", tkn);

        String result = cert.callOkCert(target, cpCd, svcName, license, new ObjectMapper().writeValueAsString(params));

        System.out.println("MDL_TKN :: " + tkn+ ", result :: " + result);
        ObjectMapper mapper = new ObjectMapper();
        Map<String, String> results = mapper.readValue(result, HashMap.class);
        model.addAllAttributes(results);
        return "phone_popup4";
    }
}
