$("#my-input1").on('change',function(e){
	console.log(e.target.value.split("\\"));
	var fileValue = e.target.value.split("\\")
	var fileName = fileValue[fileValue.length-1]; // 파일명
	console.log(fileName);
    $(".attachtext").val(fileName);
  });



function onClickUpload() {
    let myInput1 = document.getElementById("my-input1");
    myInput1.click();
}

function checkform() {
 if(document.container.activManagerName.value == "" ){
     alert("매니저 이름을 작성해주세요.");
     form.activManagerName.focus();
  }
 }

//버튼을 클릭 했을 시 파일이 올라가지면서, placeholder가 이름이 z