package com.company.test.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.company.test.Mapper.MemberMapper;
import com.company.test.Service.MemberService;

@Service("MemberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired MemberMapper memberMapper;
	
	@Override
	public ModelAndView chkId(String member_id, ModelAndView mav) {
		
		int haveId = memberMapper.chkId(member_id);
		
		if(haveId == 0) {
			mav.addObject("result_code", "YES");
		}else {
			mav.addObject("result_code", "NO");
		}
		
		System.out.println(member_id);
		return mav;
	}

}
