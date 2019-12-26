package com.company.test.Controller;


import java.util.Calendar;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.company.test.Service.MemberService;


@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired MemberService memberService;
	
	/**
	 * main
	 * @return
	 */
	@RequestMapping(value="/")
	public String main() {
		logger.info("hello. This is main");
		Calendar calendar = Calendar.getInstance();
		return "main";
	}
	
	
	/**
	 * joinForm
	 * @return
	 */
	@RequestMapping(value="/join")
	public String join() {
		logger.info("This is joinForm");
		return "joinForm";
	}
	
	/**
	 * chkId json 응답
	 */
	@RequestMapping(value="/chkId")
	public ModelAndView chkId(String member_id) {
		ModelAndView mav = new ModelAndView();
		
		memberService.chkId(member_id, mav);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
}
