package org.hta.member.controller;

// ActionForward 클래스는 Action 인터페이스에서 명령을 수행하고 결과 값을 
// 가지고 포워딩할 때 사용되는 클래스 입니다.
// 이 클래스는 redirect 여부 값과 포워딩할 페이지의 위치를 가지고 있습니다.
// 이 값들은 FrontController 에서 ActionForward 클래스 타입으로 반환값을 
// 가져오면 그 값을 확인하여 해당하는 요청 페이지로 포워딩 처리를 합니다. 
public class ActionForward {
	private boolean redirect = false;
	private String path = null;
	
	// property redirect 의 is 메소드
	public boolean isRedirect() {
		// 프로퍼티 타입이 boolean 일 경우 get 대신 is 를 앞에 붙일 수 있습니다.
		return redirect;
	}
	
	// property redirect 의 set 메소드
	public void setRedirect(boolean b) {
		redirect = b;
	}
	
	// property path 의 get 메소드 
	public String getPath() {
		return path;
	}
	
	// property path 의 set 메소드
	public void setPath(String p) {
		path = p;
	}
}
