// 인증 요청 (memberConfirm)의 체크박스
function checkSelectAll() {
	// 전체 체크박스
	const checkboxes = document.querySelectorAll('input[name="check_btn"]');
	// 선택된 체크박스
	const checked = document.querySelectorAll('input[name="check_btn"]:checked');
	// select all 체크박스
	const selectAll = document.querySelector('input[name="selectall"]');

	if (checkboxes.length === checked.length) {
		selectAll.checked = true;
	} else {
		selectAll.checked = false;
	}

}

function selectAll(selectAll) {
	const checkboxes
		= document.getElementsByName('check_btn');

	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectAll.checked
	})
}


// 대외 활동 글 승인 / 거절
function activityConfirm() {
	var checkedList = document.querySelectorAll('input[name="activityPost_btn"]:checked');
	if (checkedList.length == 0) {
		alert('글을 선택해주세요');
	} else {
		//선택된 글은 게시 요청 목록에서 삭제
		for (var i = 0; i < checkedList.length; i++) {
			if (checkedList[i].checked) {
				checkedList[i].parentElement.parentElement.remove();
			}
		}
		var returnValue = confirm('승인하시겠습니까?(확인 누르면 게시/취소 누르면 거절)');
		if (returnValue == true) {
			alert('게시되었습니다');
			// 공고글로 등록

		} else {
			alert('거절되었습니다');
		}
	}
}

// 회원 인증 파일 확인 후 승인
function confirmMember() {
	var checkedList = $("input:checkbox[name=check_btn]:checked");
	if (checkedList.length == 0)  {
		alert('회원을 선택해주세요');
	}  else {
		var returnValue = confirm('승인하시겠습니까?(확인 누르면 승인/취소 누르면 거절)');
		if (returnValue == true) {
			alert('인증 완료');

			/*checkedList.each(function(i) {
				var tr = checkbox.parent().parent().eq(i);
				var td = tr.children();
				console.log('들어옴');

				var status = td.eq(6).text();
				console.log(status);
			});*/
			for (var i = 0; i < checkedList.length; i++) {
				if (checkedList[i].checked) {
					document.getElementById("confirm").getElementsByTagName("tr")[i + 1].getElementsByTagName('td')[6].innerHTML = '승인 완료';
				} else {
					alert('인증 거절');
				}

			}
		}
	}
}


//전체 회원 테이블에서 삭제 버튼 클릭시 회원 삭제
function remove_tr(This) {
	var returnValue = confirm("이 회원을 목록에서 삭제 하시겠습니까?");
	if (returnValue == true) {
		alert("회원 목록에서 삭제 됩니다");
		This.closest('tr').remove();
		// 회원 번호로 실제 블랙리스트 db에서 회원 삭제

	}
}

/*    // 회원 목록에서 상세보기 눌렀을 때
	function memberDetail(){
	  // 회원번호로 db에서 select
	  // 해당 회원 정보 가져오기 
	  window.open();
	}*/



// 회원 인증 페이지에서 해당 행 클릭 시
function checkImg() {
	var imgage = document.querySelector(img);
	var returnValue = confirm('파일 확인');
	if (returnValue == true) {
		//첨부된 이미지 경로 가져와서 확인

	} else {
		alert('취소하셨습니다');
	}
}

function search() {
	var chk = false;
	var inputName = document.getElementById('inputName').value;
	var rows = document.getElementById('memberTableBody').getElementsByTagName('tr');
	for (var r = 0;   r < rows.length; r++) {
		var cells = rows[r].getElementsByTagName('td');
		var name = cells[1].firstChild.data;
		if (inputName == name) {
			chk = true;
			break;
		}
	}
	if (chk) {
		alert('해당 회원 존재');
	}
}