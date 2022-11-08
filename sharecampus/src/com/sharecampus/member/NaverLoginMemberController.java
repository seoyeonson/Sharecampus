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

import org.json.JSONObject;

import com.sharecampus.Execute;
import com.sharecampus.Result;

public class NaverLoginMemberController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		
		System.out.println("NaverLoginMemberController 들어옴");
		Result result = new Result(); 
		HttpSession session = req.getSession();
		
		// 로그인 된 사용자의 정보를 요청할 URL
	    String getMemberInfoUrl = "https://openapi.naver.com/v1/nid/me";
//	    String token_type = "token_type";
	    
	    // 이전 URL에서 가져온 access_token 값
	    String access_token = (String)session.getAttribute("access_token");
	    
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
	      conn.setRequestProperty("Content-Type", "application/json; utf-8");
//	      conn.setRequestProperty("charset", "utf-8");
	      
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
	      StringBuffer decode_uni = new StringBuffer();
	      
	      System.out.println(data);
	      
	      for(int i=0; i<data.length(); i++){
	          if(data.charAt(i) == '\\' &&  data.charAt(i+1) == 'u'){    
	              Character c = (char)Integer.parseInt(data.substring(i+2, i+6), 16);
	              decode_uni.append(c);
	              i+=5;
	          }else{
	        	  decode_uni.append(data.charAt(i));
	          }
	      }
	      data = decode_uni.toString();
	      
	      // 응답에서 필요한 정보를 잘라내어 사용
	      // member_id
	      member_id = data.substring(data.indexOf("email") + 8, data.length() - 3);
	      System.out.println("member_id : " + member_id);
	      
	      
	      // member_nickname
    	  member_nickname = data.substring(data.indexOf("nickname") + 11, data.indexOf("email") - 3);	    	  
    	  System.out.println("member_nickname : " + member_nickname);

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
	    
	    session.setAttribute("member_id", member_id);
	    session.setAttribute("member_nickname", member_nickname);
	    session.setAttribute("member_type", 3);
	      
	    result.setPath("/member/checkId.me");
		return result;
	}

}
