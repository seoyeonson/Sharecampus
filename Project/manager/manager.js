// memberBadge의 체크박스
function checkSelectAllBadge()  {
    // 전체 체크박스
    const checkboxes 
      = document.querySelectorAll('input[name="badge_btn"]');
    // 선택된 체크박스
    const checked 
      = document.querySelectorAll('input[name="badge_btn"]:checked');
    // select all 체크박스
    const selectAllBadge 
      = document.querySelector('input[name="selectallbadge"]');
    
    if(checkboxes.length === checked.length)  {
      selectAllBadge.checked = true;
    }else {
      selectAllBadge.checked = false;
    }
  
  }
  
  function selectAllBadge(selectAllBadge)  {
    const checkboxes 
       = document.getElementsByName('badge_btn');
    
    checkboxes.forEach((checkbox) => {
      checkbox.checked = selectAllBadge.checked
    })
  }
  
  function member_alert() {
    if((document.querySelectorAll('input[name="badge_btn"]:checked').length == 0)){
      alert('회원을 선택해주세요');
    }else {
      alert('회원 상세 보기');
    }
  }


  // memberConfirm의 체크박스
  function checkSelectAll()  {
    // 전체 체크박스
    const checkboxes 
      = document.querySelectorAll('input[name="check_btn"]');
    // 선택된 체크박스
    const checked 
      = document.querySelectorAll('input[name="check_btn"]:checked');
    // select all 체크박스
    const selectAll 
      = document.querySelector('input[name="selectall"]');
    
    if(checkboxes.length === checked.length)  {
      selectAll.checked = true;
    }else {
      selectAll.checked = false;
    }
  
  }
  
  function selectAll(selectAll)  {
    const checkboxes 
       = document.getElementsByName('check_btn');
    
    checkboxes.forEach((checkbox) => {
      checkbox.checked = selectAll.checked
    })
  }
  
  function confirm_alert() {
      alert('승인하시겠습니까?');
  }



  // postActivity의 체크박스
  function checkSelectAllActivity()  {
    // 전체 체크박스
    const checkboxes 
      = document.querySelectorAll('input[name="activityPost_btn"]');
    // 선택된 체크박스
    const checked 
      = document.querySelectorAll('input[name="activityPost_btn"]:checked');
    // select all 체크박스
    const selectAllActivity 
      = document.querySelector('input[name="selectallActivityPost"]');
    
    if(checkboxes.length === checked.length)  {
      selectAllActivity.checked = true;
    }else {
      selectAllActivity.checked = false;
    }
  
  }
  
  function selectAllActivity(selectAllActivity)  {
    const checkboxes 
       = document.getElementsByName('activityPost_btn');
    
    checkboxes.forEach((checkbox) => {
      checkbox.checked = selectAllActivity.checked
    })
  }

  function activity_confirm_alert() {
    if((document.querySelectorAll('input[name="activityPost_btn"]:checked')).length == 0 ){
      alert('글을 선택해주세요');
    }else {
    alert('승인하시겠습니까?');
  }
}

//blackList 테이블에서 회원 검색
function search(){
  const memberName = document.getElementsByClassName('td2');
  const inputValue = document.getElementById('search-txt');
  if(memberName.innerText == inputValue.value) {
    alert('블랙리스트에 해당 회원 존재');
  }else {
    alert('블랙리스트에 해당 회원 없음');
  }
}
