package com.winter.app.members;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

//해당 클래스를 컨트롤러로 인식하며 자바빈으로 관리한다.
//자바빈이란 프레임워크가 관리하는 클래스, 인스턴스의 소멸과 생성을 관리
@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	//스프링의 기본값은 컨트롤러 메서드가 String타입을 반환할 경우 뷰의 경로를 반환
	//컨트롤러클래스의 메서드 중 웹 요청을 처리하는 메서드를 알려주는 것
	//requestMapping의 value속성은 "웹주소"를 가리킴
	@RequestMapping(value="join", method=RequestMethod.GET)
	public void join() throws Exception {
		System.out.println("get가입 컨트롤러");
	}
	
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String join(MemberDTO memberDTO) throws Exception {
		System.out.println("post가입 컨트롤러");

		int result = memberService.join(memberDTO);

		return "redirect:/";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void login(Model model, @CookieValue(name = "remember", required = false, defaultValue = "") String value)
			throws Exception {
		System.out.println("login get실행");
		model.addAttribute("id", value);
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(MemberDTO memberDTO, String remember, HttpServletResponse response, HttpSession session)
			throws Exception {
		System.out.println("login post실행");
		
		if (remember != null) {
			Cookie cookie = new Cookie("remember", memberDTO.getMemberId());
			cookie.setMaxAge(60 * 60);
			response.addCookie(cookie);
		} else {
			Cookie cookie = new Cookie("remember", "");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}

		// memberDTO = memberService.login(memberDTO);
		memberDTO = memberService.login(memberDTO);
		if (memberDTO != null) {
			session.setAttribute("member", memberDTO);
		} else {

		}
		return "redirect:/";
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		session.invalidate(); // session의 유지시간을 0으로 설정
//		session.setAttribute("member", null);
//		session.removeAttribute("member");
//		session.removeValue("member");
//		session.isNew();
		return "redirect:../";
	}
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public void mypage(HttpSession session, Model model) throws Exception {
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		System.out.println(memberDTO.getMemberId());
		memberDTO = memberService.detail(memberDTO);
		//System.out.println(memberDTO.getMemberFileDTO().getFileName());
		model.addAttribute("member", memberDTO);

	}

	@RequestMapping(value = "update", method = RequestMethod.GET)
	public void update(HttpSession session, Model model) throws Exception {
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		memberDTO = memberService.detail(memberDTO);
		model.addAttribute("member", memberDTO);
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(MemberDTO memberDTO, HttpSession session) throws Exception {
		MemberDTO user = (MemberDTO) session.getAttribute("member");
		memberDTO.setMemberId(user.getMemberId());
		int result = memberService.update(memberDTO);
//		if (result > 0) {
//			session.setAttribute("member", memberDTO);
//		}

		return "redirect:../";
	}

	@RequestMapping(value = "delete", method = RequestMethod.POST)
	public String delete(HttpSession session) throws Exception {
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		int result = memberService.delete(memberDTO);
		if (result > 0) {
			session.invalidate();
		}

		return "redirect:/";
	}

}
