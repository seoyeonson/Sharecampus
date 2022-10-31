function cl() {
    let commit = confirm("댓글을 저장하시겠습니까?");
    if ($("#cwrite").val() == "") {
        alert("댓글을 입력해주세요.");
        return false;
    } else{
        if(commit) {
            location.href ='studyBoard.html'
        }else{
 
        }
    }
}