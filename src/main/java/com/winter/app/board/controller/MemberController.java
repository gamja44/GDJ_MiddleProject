package com.winter.app.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//해당 클래스를 컨트롤러로 인식하며 자바빈으로 관리한다.
//자바빈이란 프레임워크가 관리하는 클래스, 인스턴스의 소멸과 생성을 관리
@Controller
public class MemberController {
	
	//스프링의 기본값은 컨트롤러 메서드가 String타입을 반환할 경우 뷰의 경로를 반환
	//컨트롤러클래스의 메서드 중 웹 요청을 처리하는 메서드를 알려주는 것
	//requestMapping의 value속성은 "웹주소"를 가리킴
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join() {
		return "/member/join";
	}
	
}
