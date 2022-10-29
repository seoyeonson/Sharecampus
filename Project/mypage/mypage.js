// 미리보기 이미지 
    
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
    console.log($passwords);
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
});