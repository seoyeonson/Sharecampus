package com.sharecampus.member;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.rmi.ServerException;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sharecampus.Execute;
import com.sharecampus.Result;

public class LogOutController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		HttpSession session = req.getSession();
		Result result = new Result();
		
		// 로그인 된 사용자의 정보를 요청할 URL
	    String getMemberInfoUrl = "https://kapi.kakao.com/v1/user/logout ";
//	    String token_type = "token_type";
	    
	    String access_token = String.valueOf(session.getAttribute("access_token"));
	    // 이전 URL에서 가져온 access_token 값
	    
//	    access_token check test Code
//	    System.out.println(access_token);
	    
	    // 요청하기 위해 필요한 객체
	    HttpsURLConnection conn = null;
	    OutputStreamWriter writer = null;
	    BufferedReader reader = null;
	    InputStreamReader isr= null;
	    
	    // member 정보를 세션에 저장하기 위한 객체
	    String member_id = "";
	    String member_nickname = "";

	    try {
	      final URL url = new URL(getMemberInfoUrl);
	      
	      conn = (HttpsURLConnection) url.openConnection();
	      // 요청 프로퍼티 설정
	      conn.setRequestProperty("Authorization", "Bearer " + access_token);
	      conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
	      conn.setRequestProperty("charset", "utf-8");
	      
	      // POST 방식으로 요청
	      conn.setRequestMethod("POST");
	      conn.setDoOutput(true);

	      writer = new OutputStreamWriter(conn.getOutputStream());
	      writer.flush();
	   
	      final int responseCode = conn.getResponseCode();
	      System.out.println("\nSending 'POST' request to URL : " + getMemberInfoUrl);
	      System.out.println("Response Code : " + responseCode);

	      isr = new InputStreamReader(conn.getInputStream());
	      reader = new BufferedReader(isr);
	      final StringBuffer buffer = new StringBuffer();
	      String line;
	      while ((line = reader.readLine()) != null) {
	        buffer.append(line);
	      }
	     
	      String data = buffer.toString();
	      System.out.println(data);
	      
	      session.invalidate();
	      result.setPath("/");
	      
	    } catch (IOException e) {
	      e.printStackTrace();
	    } finally {
	        // clear resources
	        if (writer != null) {
	          try {
	              writer.close();
	           } catch(Exception ignore) {
	           }
	        }
	        if (reader != null) {
	          try {
	              reader.close();
	          } catch(Exception ignore) {
	          }
	        }
	        if (isr != null) {
	            try {
	                isr.close();
	            } catch(Exception ignore) {
	            }
	         }
	    }
		return result;
	}

}
