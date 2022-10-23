$('#ppls').click(function () {
    let checked = $(this).is(':checked');

    if (checked) {
        $("#hopediv").hide();
        $(".text1").val("x");
        $(".text2").val("x");
    } else {
        $("#hopediv").show();

    }

});

function check() {
    let move = confirm("글을 저장하시겠습니까?");
    if ($(".fieldchoose").val() == "") {
        alert("분야를 선택해주세요.");
        return false;
    } else if ($(".locationchoose").val() == "") {
        alert("지역을 선택해주세요.");
        return false;
    } else if ($(".text1").val() == "" || $(".text2").val() == "") {
        alert("인원수를 입력해주세요.");
        return false;
    } else if ($("#ctitle").val() == "") {
        alert("제목을 입력해주세요.");
    } else if ($("#cwrite").val() == "") {
        alert("내용을 입력해주세요.");
    } else {
       if(move) {
           location.href ='studyMain.html'
       }else{

       }

    }

}






