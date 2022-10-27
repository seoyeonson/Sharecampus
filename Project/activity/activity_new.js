function onClickUpload() {
    let myInput = document.getElementById("my-input");
    myInput.click();
}

function fileUpload() {
    var fileInput = document.getElementsByClassName("attachfile");

    for (var i = 0; i < fileInput.length; i++) {
        if (fileInput[i].files.length > 0) {
            for (var j = 0; j < fileInput[i].files.length; j++) {
                console.log(fileInput[i].files[j].name); // 파일명 출력
            }
        }
    }
}

