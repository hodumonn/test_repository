package com.company.test.Service;

import org.springframework.web.servlet.ModelAndView;

public interface MemberService {
	
	ModelAndView chkId(String member_id, ModelAndView mav);

}
