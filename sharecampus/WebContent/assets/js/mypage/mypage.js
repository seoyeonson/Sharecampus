// 미리보기 이미지 
    
const file = document.querySelector("input[type='file']");
    
    console.log(file[0]);
    file.addEventListener("change", function(e){
        var reader = new FileReader();
        reader.readAsDataURL(e.target.files[0]);
        reader.onload = function(e){
            let url = e.target.result;

            if(url.includes("image")){
                document.querySelector("label div").style.backgroundImage = "url(" + url +")";
            }else{
                document.querySelector("label div").style.backgroundImage = "url(img/no_image.jpg)";
            }
        }
    });

    var password = document.getElementById("password")
    , confirm_password = document.getElementById("confirm_password");
  
  function validatePassword(){
    if(password.value != confirm_password.value) {
      confirm_password.setCustomValidity("Passwords Don't Match");
    } else {
      confirm_password.setCustomValidity(''); // 오류가 없으면 메시지를 빈 문자열로 설정해야한다. 오류 메시지가 비어 있지 않은 한 양식은 유효성 검사를 통과하지 않고 제출되지 않는다.
    }
  }
  
  password.onchange = validatePassword;
  confirm_password.onkeyup = validatePassword;
