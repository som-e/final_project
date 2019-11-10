package com.Model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DataAccessObject.memberDAO;
import com.DataObject.driverDO;
import com.Interface.Command;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class JoinService_driver implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String saveDirectory = "C:\\Users\\Genie\\Desktop\\workspace\\final_project\\WebContent\\images";
		int maxPostSize = 5*1024*1024;
		String encoding = "utf-8";
		
		MultipartRequest multi = new MultipartRequest(
				request,
				saveDirectory, //파일저장위치
				maxPostSize, //최대사이즈
				encoding, //인코딩방식
				new DefaultFileRenamePolicy());
				//html에서 enc-type을 지정했을 때 사용하는 객체
		
		String d_id = multi.getParameter("d_id");
		String d_pw = multi.getParameter("d_pw");
		String d_name = multi.getParameter("d_name");
		String d_num = multi.getParameter("d_num");
		String e_id = multi.getParameter("e_id");
		String photo = multi.getFilesystemName("photo");
		
		System.out.println(photo);
		
		driverDO d_do = new driverDO(d_id, d_pw, d_name, d_num, e_id, photo);
		memberDAO dao = new memberDAO();
		
		
		int cnt = dao.Join_driver(d_do);
		
		String nextpage = "";
		
		if(cnt>0) {
			request.setAttribute("d_do", d_do);
			nextpage="index.jsp";
			
			
		}else {
			System.out.println("가입실패");
		}
		return nextpage;
	}

}
