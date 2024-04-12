package org.hta.member.action;

import java.io.IOException;
import java.util.List;

import org.hta.member.controller.Action;
import org.hta.member.controller.ActionForward;
import org.hta.member.dao.MemberDAO;
import org.hta.member.domain.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ListAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		MemberDAO md = new MemberDAO();
		List<Member> list = md.list();
		
		request.setAttribute("list", list);
		forward.setRedirect(false);
		forward.setPath("jsp/list.jsp");
		return forward;
	}

}
