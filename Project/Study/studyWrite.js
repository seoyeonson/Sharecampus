$('#ppls').click(function(){
    // alert("1")
    var checked = $(this).is(':checked');
    
    if(checked){
        
        $("#hopediv").hide();
    }else{
        $("#hopediv").show();

    }

});
