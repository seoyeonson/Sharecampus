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

public class KakaoLoginController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		System.out.println("KakaoLOginController 들어옴");
		
		Result result = new Result(); 
		HttpSession session = req.getSession();
		// 카카오 로그인에 성공할 경우, authorization code를 받는다.
		// 코드를 이용하여 access_token을 가져온다.
		
		// access_token을 요청할 URL
		final String AUTH_HOST = "https://kauth.kakao.com";
	    final String tokenRequestUrl = AUTH_HOST + "/oauth/token";

	    // 개발자 웹사이트에서 부여하는 client_id
	    // 해당 앱의 REST API KEY 정보. 개발자 웹사이트의 대쉬보드에서 확인 가능
	    String CLIENT_ID = "5448023a0fad890ae4a80526f46aa8c9"; 
	    
	    // 해당 앱의 설정된 uri. 개발자 웹사이트의 대쉬보드에서 확인 및 설정 가능
	    String REDIRECT_URI = "http://localhost:8085/member/auth/kakao/callback.me";
	    
	    // 로그인 과정중 얻은 authorization code 값
	    String code = req.getParameter("code");
	    
	    String access_token = "";

	    // access_token을 URL에 요청하기 위한 객체
	    HttpsURLConnection conn = null;
	    OutputStreamWriter writer = null;
	    BufferedReader reader = null;
	    InputStreamReader isr= null;

	    try {
	    	// 요청 URL에 넘거야하는 Params
	    	final String params = String.format("grant_type=authorization_code&client_id=%s&redirect_uri=%s&code=%s",
	                        CLIENT_ID, REDIRECT_URI, code);

	    	final URL url = new URL(tokenRequestUrl);
	      
	    	// URL로 연결
	    	conn = (HttpsURLConnection) url.openConnection();
	    	// POST로 요청
	    	conn.setRequestMethod("POST");
	    	// Content-Type : pplication/x-www-form-urlencoded로 요청
	    	conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
	    	conn.setDoOutput(true);

	    	writer = new OutputStreamWriter(conn.getOutputStream());
	    	writer.write(params);
	    	writer.flush();
	   
	    	final int responseCode = conn.getResponseCode();
	    	System.out.println("\nSending 'POST' request to URL : " + tokenRequestUrl);
	    	System.out.println("Post parameters : " + params);
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
	      
	    	// 응답에서 필요한 정보를 잘라내어 사용
	    	access_token = data.substring(data.indexOf("access_token") + 15, data.indexOf("token_type") - 3);
	    	System.out.println(access_token);
	     
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
	    session.setAttribute("access_token", access_token);	
    	result.setPath("/member/auth/kakaoLoginMember.me");
	    return result;
	}

}
