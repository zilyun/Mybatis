package org.hta.member.action;

import java.io.IOException;
import java.io.PrintWriter;

import org.hta.member.controller.Action;
import org.hta.member.controller.ActionForward;
import org.hta.member.dao.MemberDAO;
import org.hta.member.domain.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateProAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pass = request.getParameter("password");
		
		Member mem = new Member();
		mem.setId(request.getParameter("id"));
		mem.setPassword(request.getParameter("password"));
		
		MemberDAO md = new MemberDAO();
		int result = md.update(mem);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(result == 1) {
			out.println("<script>");
			out.println("alert('수정 성공입니다.');");
			out.println("location.href='list.net'");
			out.println("</script>");
			out.close();
		} else {
			out.println("<script>");
			out.println("alert('수정 실패입니다.');");
			out.println("history.go(-1)'");
			out.println("</script>");
			out.close();
		}
		return null;
	}

}
