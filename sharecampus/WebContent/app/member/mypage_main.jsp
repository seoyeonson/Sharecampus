<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <title>마이페이지</title>
</head>
<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
<section class="curriculumSection">
    <!-- 위 태그 -->
    <body>
        <div class="curriculum_header">
            <h1>
                <span class="smTxt" style="font-size: 0.9rem;">LET'S see</span>
                <span class="bgTxt">마이페이지</span>
            </h1>
        </div>
         <!-- 위 태그 -->
    <!-- 배너 관리 시작 -->
    <section>
    <div id="container">
        <!-- 왼쪽 배너 시작 -->
        <div id="asideWrap" class="active">
            <div class="sideNav -first">
                <!-- 왼쪽 첫번째 배너 시작-->
                <ul>
                    <li class="first_Nav" style="background-color: #3393f4;">
                        <a href="mypage_main.html">
                        <span style="color: #fff;">내 정보</span>
                        </a>
                    </li> 
                    <li>
                        <a href="mypage_main.html">
                        <span>회원 정보 변경</span>
                        </a>
                    </li>
                </ul>
                  <!-- 왼쪽 첫번째 배너 끝-->
            </div> 
            <div class="sideNav -second">
                    <!-- 왼쪽 두번째 배너 시작-->
                <ul>
                    <li class="first_Nav" style="background-color: #3393f4;">
                        <a href="mypage_writing.html">
                        <span style="color: #fff;">나의 활동</span>
                        </a>
                    </li> 
                    <li>
                        <a href="mypage_writing.html">
                        <span>내가 쓴 글 모아보기</span>
                        </a>
                    </li> 
                    <li>
                        <a href="mypage_comment.html">
                        <span>내가 쓴 댓글 모아보기</span>
                        </a>
                    </li>
                    <li>
                        <a href="mypage_bookmark.html">
                        <span>내가 모은 책갈피 모아보기</span>
                        </a>
                    </li>
                </ul>
                 <!-- 왼쪽 두번째 배너 끝-->
            </div>
        </div>
        <!-- 오른쪽 배너 시작 -->
        <main id = "content" role="main" class="more" style="border:none">
            <section class="sMypage">
                <!-- 오른쪽 배너 타이틀 -->
                <h1 class="sMypageTitle" style="background-color: #3393f4; color: #fff; ">내 정보</h1>
                <!-- 오른쪽 배너 타이틀 -->
                <div>
                    <div class="sMypageProfile">
                        <h2 class="sMypageSubTitle">사용중인 프로필</h2>
                        <div class="sMypageProfileBox">
                            <!-- 프로필 이미지 미리보기 설정 -->
                            <div class="profileList">
                                            <label for="input_image">
                                                <div></div>
                                            </label>
                                            <input type="file" id="input_image" style="display:none;">
                            </div>
                            <!-- 프로필 이미지 미리보기 설정 끝-->
                        </div>  
                        <!-- 프로필 이미지 눌러 해당 주소를 DB로 -->
                        <div class="sMypageProfileBtnArea">
                            <a href="#" class="uButton -sizeS -confirm3">관리</a>
                        </div>
                         <!-- 프로필 이미지 눌러 해당 주소를 DB로 -->
                    </div>
                  	<div class="sMypageAccount">
                        <h2 class="sMypageSubTitle">현재 로그인 계정</h2>
                        <div class="sMypageAccountCont">
                            <div class="sMypageAccountItem _phoneTextPanel" style="display: none;"></div>
                            <div class="sMypageAccountItem _emailActionPanel">
                                <label class="label">현재 닉네임</label>
                                <div class="content">
                                    <div class="uInput -simpleLine" style="width: 390px; padding-left: 20px; border-bottom: #ebebeb;">
                                        <!-- 닉네임 주소 -->
                                        <h3 id="now_nickname">집에 가고싶고 졸립고 배고픈 무지</h3>
                                        <!-- 닉네임 주소 -->
                                    </div>
                                </div>
                            </div>
                            <div class="sMypageAccountItem _emailActionPanel">
                                <label class="label">현재 이메일</label>
                                <div class="content">
                                    <div class="uInput -simpleLine" style="width: 390px; padding-left: 20px; border-bottom: #ebebeb;">
                                        <!-- 이메일 주소 -->
                                        <h3 id="now_email">iolpji@Naver.com</h3>
                                        <!-- 이메일 주소 -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sMypageAccount">
                        <h2 class="sMypageSubTitle">회원 정보 수정</h2>
                        <div class="sMypageAccountCont">
                            <div class="sMypageAccountItem _phoneTextPanel" style="display: none;"></div>
                            <div class="sMypageAccountItem _emailActionPanel">
                                
                                <label class="label" for="email_view630">닉네임</label>
                                <div class="content">
                                    <div class="uInput -simpleLine" style="width: 390px; border-bottom: #ebebeb;">
                                        <!-- 닉네임 주소 입력 -->
                                        <input type="text" id="nickname_view630" placeholder="변경하고싶은 닉네임을 입력해주세요" value="" class="_inputEmail">
                                        <!--  닉네임 주소 입력 -->
                                    </div>
                                </div>
                                <!-- 입력한 이메일 값을 DB로 전송-->
                                <div class="btn">
                                    <button type="submit" class="uButton -sizeS -confirm" id="_btnUpdateEmail">확인</button>
                                </div>
                                <!-- 입력한 이메일 값을 DB로 전송-->
                            </div>
                            <!-- 비밀번호 변경 창 -->
                            <div class="sMypageAccountItem _emailActionPanel">
                                <label class="label" for="pass_word630">비밀번호</label>
                                <div class="content" style="display: flex;">
                                    <div id="password" class="uInput -simpleLine" style=" display: flex; width: 390px;">
                                        <!-- 비밀번호 입력 -->
                                        <input type="password" class="password" id="password1" placeholder="비밀번호 입력">
                                        <input type="password" class="password" id="password2" placeholder="비밀번호 재입력">
                                        <!-- 비밀번호 입력 -->
                                    </div>
                                    <div class="password_check" style="padding-top: 20px; font-size: 8px;"></div>
                                    </span>
                                </div>
                                <!-- 입력한 비밀번호 값을 DB로 전송-->
                                <div class="btn">
                                    <input type="button" style="border: 0;" onclick="test()" class="uButton -sizeS -confirm" id="_btnUpdatePassword" value="확인">
                                </div>
                                <!-- 입력한 비밀번호 값을 DB로 전송-->
                            </div>

                        </div>
                    </div>
                    </div>
                    <!-- 소속 인증 서비스 -->
                    <div class="sMypageConnectOrganization">
                        <div class="sMypageConntetTitleBox">
                            <h2>소속 인증</h2>
                        </div>
                        <div class="sMypageConnectDocumnet">
                            <div class="icon">
                                <span class="">
                                    <span class="gSrOnly">첫번째 연동</span>
                                </span>
                            </div>
                            <img class="id_icon" src="/Project/mypage/icon/engine-warning.png">
                            <div class="content off">증명서류를 제출할 수 있습니다.</div>
                        </div>
                           <div class="btn" style="display: flex; justify-content: flex-end;">
                            <!-- 보낼 파일을 저장함 -->
                            <input type="file" class="document_file" style="margin-right: 150px;" >
                            <!-- 해당 파일을 DB로 보냄-->
                            <button type="submit" class="uButton -sizeS -confirm3 _btnConnectDocument">심사요청</button>
                        </div>
                    </div>
                </div>
        </main>
        <div class="sideRight" style="display: none;"></div>
    </div>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</body>

</div>
</section>
</section>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
//미리보기 이미지 

const file = document.querySelector("input[type='file']");
    
    file.addEventListener("change", function(e){
        var reader = new FileReader();
        reader.readAsDataURL
        
        (e.target.files[0]);
        reader.onload = function(e){
            let url = e.target.result;

            if(url.includes("image")){
                document.querySelector("label div").style.backgroundImage = "url(" + url +")";
            }else{
                document.querySelector("label div").style.backgroundImage = "url(img/no_image.jpg)";
            }
        }
    });
  
// 비밀번호 일치 
var $passwords = $("password");
var $password1 = $("#password1");
var $password2 = $("#password2");
var $password_check = $(".password_check");

$password1.on("click", function(){
  if($password2.val() == ""){
    $password2.css({
      "border-bottom-color":"#ebebeb"
    });
    $password1.css({
      "border-bottom-color":"#ebebeb"
    });
    $password_check.html("");
  };

  $password2.on("blur", function(){
    // password2를 벗어났을때 해당 함수 실행
    if($password2.val() == ""){
      $password2.css({
        "border-bottom-color":"#ebebeb"
      });
      $password_check.html("");
    }else if( $password1.val() != $password2.val() ) {
        $password_check.html("비밀번호 불일치");
        $password1.css({
          "border-bottom-color":"#ff5a5a"
        })
        $password2.css({
          "border-bottom-color":"#ff5a5a"
        });}
        else if($password1.val() == $password2.val()){
        $password_check.html("비밀번호 일치");
    }
  });
});</script>
</html>