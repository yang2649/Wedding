package com.green.esimate.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.estimate.service.EstimateService;
import com.green.estimate.vo.EstimateVo;

@Controller
public class EstimateController {

	@Autowired
    private EstimateService estimateservice;
	
    @RequestMapping("/Reservation01")
    public String estimateForm() {
    	
        return "estimateForm";
    }
    
    @RequestMapping("/estimateForm")
    public String estimateForm( EstimateVo estivo, Model model )    {
    	
    	estimateservice.insertEsti( estivo );
    	
        return "estimateForm";
    }
}