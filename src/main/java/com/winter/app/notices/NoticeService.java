package com.winter.app.notices;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import com.winter.app.util.Pager;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	
	public List<NoticeDTO> list()throws Exception{
		return noticeDAO.list();
	}
	
	public NoticeDTO detail(NoticeDTO noticeDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.detail(noticeDTO);
	}
	
	public int delete(NoticeDTO noticeDTO) throws Exception {
		System.out.println("삭제서비스실행");
		return noticeDAO.delete(noticeDTO);
	}

	
//	public List<NoticeDTO> list(Pager pager) throws Exception{
//		pager.makeRow();
//		/* pager.makeNum(noticeDAO.getTotalCount(pager)); */
//		return noticeDAO.list(pager);
//	}

}
