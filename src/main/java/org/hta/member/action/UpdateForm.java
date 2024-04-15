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
		ActionForward forward = new ActionForward();
		String id = (String) request.getParameter("id");
		
		MemberDAO mdao = new MemberDAO();
		Member mem  = mdao.select(id);
		
		request.setAttribute("mem", mem);
		forward.setRedirect(false);
		forward.setPath("/jsp/updateForm.jsp");
		return forward;
	}

}
