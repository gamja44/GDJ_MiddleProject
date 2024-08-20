package com.winter.app.notices;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping
public class NoticeContoller {
	
	@RequestMapping(value="/notice/customers", method=RequestMethod.GET)
	public void creat() throws Exception {
		System.out.println("get고객센터 컨트롤러");
	}

	
}
