package com.winter.app.notices;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.winter.app.util.Pager;

@Controller
@RequestMapping
public class NoticeContoller {
	
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("/notice/list")
	public String list(Model model)throws Exception {
		
		 List<NoticeDTO> list = noticeService.list();
		 
		 model.addAttribute("list", list);
		 
		 ModelAndView mv = new ModelAndView();
//		 mv.setViewName("notice/list");
//		 mv.addObject(null, mv)
		 return "notice/list";
	}
	@GetMapping("/notice/detail")
	public String detail(NoticeDTO noticeDTO, Model model) throws Exception {
		noticeDTO = noticeService.detail(noticeDTO);
		model.addAttribute("noticeDTO", noticeDTO);
		System.out.println("detail컨트롤러 notice내용:" + noticeDTO.getContents());
		return "notice/detail";
	}
	
	@PostMapping("/notice/delete")
	public String delete(NoticeDTO noticeDTO, Model model) throws Exception {
		//매개변수로 모델을 주지않고 리턴값으로 redirect:./list로 줄수도있다.
		//모델로 준이유는 jsp의 경로를 commons로 주기위해서이다.
		//commons로 가게되면 자바스크립트를 거쳐서 list로 가게해주었다.
		System.out.println("글삭제컨트롤러" + noticeDTO.getBoardNum());
		int result = noticeService.delete(noticeDTO);
		model.addAttribute("result", "삭제되었습니다" );
		model.addAttribute("url", "/notice/list" );
		return "/commons/message";
	}
	
	@GetMapping("/notice/update")
	public String update(NoticeDTO noticeDTO, Model model) throws Exception {
		noticeDTO = noticeService.detail(noticeDTO);
		model.addAttribute("noticeDTO", noticeDTO);
		return "/notice/update";
	}
	
	
	@PostMapping("/notice/update")
	public String update(NoticeDTO noticeDTO) throws Exception {
		int result = noticeService.update(noticeDTO);		
		return "redirect:./detail?boardNum=" + noticeDTO.getBoardNum();

	}
	
	@GetMapping("/notice/add")
	public String add1(NoticeDTO noticeDTO,Model model) throws Exception {
		System.out.println("add글쓰기 get 컨트롤러");
		
		return "/notice/add";
	}
	
	@PostMapping("/notice/add")
	public String add(NoticeDTO noticeDTO,Model model) throws Exception {
		System.out.println("add글쓰기post컨트롤러실행");
		int result = noticeService.add(noticeDTO);
		return "redirect:./list";
	}

	
	
	/*
	 * @RequestMapping(value="/notice/list", method=RequestMethod.GET) public String
	 * list(Pager pager, Model model) throws Exception {
	 * System.out.println("add리스트컨트롤러");s List<NoticeDTO> list =
	 * noticeService.list(pager);
	 * 
	 * model.addAttribute("pager", pager); model.addAttribute("list", list);
	 * 
	 * return "notice/list"; }
	 */

	
}
