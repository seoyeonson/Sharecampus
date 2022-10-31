


$(".joinAndLogin").click("on", function(e){
    $(".modalWrapOpen").css("display", "block");
    if(e.target.innerHTML == "가입"){
        $(".modalTit").text("회원 가입하기");
        $(".changeTxt").text("가입");
        $(".loginNoticeTxt").css("display", "block");
        $(".signupBtn").text("로그인");
    } else if (e.target.innerHTML == "로그인"){
        $(".modalTit").text("로그인");
        $(".changeTxt").text("로그인");
        $(".loginNoticeTxt").css("display", "none");
        $(".signupBtn").text("회원 가입하기");
    }
});

$(".closeBtn").click("on", function(i, v){
    $(".modalWrapOpen").css("display", "none");
})

$(".signupBtn").click("on", function(e){
    if(e.target.innerHTML == "로그인"){
        $(".modalTit").text("로그인");
        $(".changeTxt").text("로그인");
        $(".loginNoticeTxt").css("display", "none");
        $(".signupBtn").text("회원 가입하기");
    } else if(e.target.innerHTML == "회원 가입하기"){
        $(".modalTit").text("회원 가입하기");
        $(".changeTxt").text("가입");
        $(".loginNoticeTxt").css("display", "block");
        $(".signupBtn").text("로그인");
    }
})