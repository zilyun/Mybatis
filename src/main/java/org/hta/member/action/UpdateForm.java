package org.hta.member.action;

import java.io.IOException;

import org.hta.member.controller.Action;
import org.hta.member.controller.ActionForward;
import org.hta.member.dao.MemberDAO;
import org.hta.member.domain.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class UpdateForm implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		MemberDAO mdao = new MemberDAO();
		Member m  = mdao.member_info(id);
		
		ActionForward forward = new ActionForward();
		forward.setPath("updateForm.jsp");
		forward.setRedirect(false);
		request.setAttribute("memberinfo", m);
		return forward;
	}

}
