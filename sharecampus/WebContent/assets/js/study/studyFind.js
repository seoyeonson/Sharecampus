$("select[name=area]").change(function(){
	  console.log($(this).val());
	  console.log($("select[name=area] option:selected").text());
});

show();

function show(){
	/*let area = $("#area-container").val() || 'none';*/
	/*let depart = $("#depart-container").val() || 'none';*/
	let areaSelect;
	let departSelect;
	$.ajax({
		url: "${pageContext.request.contextPath}/study/find.su",
		type: "get",
		data: {areaSelect: areaSelect, departSelect: departSelect},
		dataType: "json",
		success: showList
	});
}

function showList(studyList) {
	areaSelect = $("select[name=area] option:selected").text() || 'none';
	departSelect = $("select[name=depart] option:selected").text() || 'none';
	console.log('showList들어옴');
	cosole.log(studyList);
	
}
