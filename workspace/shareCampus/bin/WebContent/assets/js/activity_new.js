$(".file").on('change',function(){
    var fileName = $("#file").val();
    $(".upload-name").val(fileName);
  });

function onClickUpload() {
    let myInput = document.getElementById("my-input");
    myInput.click();
}