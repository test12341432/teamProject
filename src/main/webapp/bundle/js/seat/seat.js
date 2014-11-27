/**
 * seat.js
 *   $("input[id='seat_checkbox']:checked").each(function(chkbox) {
                	 var str = [];
                	str.push($(this).val());
                	alert("선택하신 좌석이"+str+"이 맞습니까?");
            });
 */
    // html 이 다 로딩된 후 실행
$(document).ready(function(){
	$('#seat_ok').click(function(){
		var sel_seat = [];
		$("input[type='text']").each(function(index) {
       	sel_seat.push($(this).val());
   });
		if($(":checkbox:checked").length >0){
	  	 var re_con=confirm("선택하신 좌석이 "+sel_seat+" 맞습니까?");
	  	if(re_con){ 
	  		var all_data = {"seatValues" : sel_seat };
	  		open_url("select_result.do",all_data,"seat_outline");
	  		}else{
	  		return false;
	  	}
		}else{
			alert("좌석을 선택하지 않았습니다");
			return false;
		}
	});
});

        
function select_seat(chkbox){
		if(chkbox.checked == true){
			if($(":checkbox:checked").length <= $("#person").val()){
				$('#seat_val').append($(document.createElement('input')).attr({
		  	        		id: 99+chkbox.value
		  	        		,name:  99+chkbox.value
		  	        		,value: chkbox.value
		  	        		,type:  'text'
							}));
		}else if($(":checkbox:checked").length > $("#person").val()){
			alert("선택하신 인원을 초과 하였습니다");
			$("input[type=checkbox]").prop("checked",false);
			$('#seat_val').empty();
			return false;
			}
		}else if(chkbox.checked == false){
			var resultDel = '#'+99+chkbox.value;//삭제할 ID값을 찾기위해 변수선언
			$(resultDel).remove();
			}
	}

/* ajax */
function open_url( url, data, target ){ 
$.ajax({ 	
  type: "POST", 
  url: url, 
  data: data,
  dataType:'html',
  success: function(data){ 
	 alert("성공");
    $("#"+target).html(data); 
  },
  error: function(){
	  alert("ajax연동이 실패했습니다");
  }
})}; 
