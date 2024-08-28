package com.winter.app.notices;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.winter.app.util.Pager;
//데이터에 접근하는 클래스를 명시하는 어노테이션
@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSession sqlSession;

	private final String NAMESPACE = "com.winter.app.notices.NoticeDAO.";
	
	public List<NoticeDTO> list()throws Exception{
		return sqlSession.selectList(NAMESPACE + "list");
	}

	public NoticeDTO detail(NoticeDTO noticeDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "detail", noticeDTO);
	}
	
	public int delete(NoticeDTO noticeDTO) throws Exception {
		System.out.println("삭제dao실행");
		return sqlSession.delete(NAMESPACE + "delete", noticeDTO);
	}
	
	public int update(NoticeDTO noticeDTO) throws Exception {
		System.out.println("수정dao실행");
		return sqlSession.update(NAMESPACE + "update", noticeDTO);
	}
	
	/*
	 * public List<NoticeDTO> list(Pager pager) throws Exception { return
	 * sqlSession.selectList(NAMESPACE + "list", pager); }
	 */
	
//	public Long getTotalCount(Pager pager) throws Exception {
//		return sqlSession.selectOne(NAMESPACE + "getTotalCount",pager);
//		
//	}
}
