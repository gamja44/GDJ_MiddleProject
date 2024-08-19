package com.winter.app.centers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/notice/*")
public class CenterContoller {
	
	@RequestMapping(value="customers", method=RequestMethod.GET)
	public void creat() throws Exception {
		System.out.println("get고객센터 컨트롤러");
	}

	
}
