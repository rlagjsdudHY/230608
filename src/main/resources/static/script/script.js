/**
 * 
 */
 
 $(function(){
 
 	//  검색 시작
	$("#btnSearch").click(function(){
		let searchGoods = $("#searchGoods").val().trim();
		if (searchGoods == "") {
			alert("검색하실 상품명 또는 상품코드를 입력하세요.");
			$("#searchGoods").focus();
		} else {
			location.href="/goodsSearch?searchGoods="+searchGoods;
		}
	});
	//  검색 끝
	
	
	// 선택 삭제, 일괄 삭제 시작
	
	// 정방향 체크 
	$("input#chkAll").click(function(){
		let chkProp = $(this).prop("checked");
		//alert("chkProp : " + chkProp);
		$("span.delIcon>input.chkDel").prop("checked", chkProp);
	});
	
	// 역방향 체크 
	$("span.delIcon>input.chkDel").click(function(){
	
		let chkLen = $("span.delIcon>input.chkDel").length;
		//alert("chkLen : " + chkLen);
		let falseCnt = 0;
		for (let i=0; i<chkLen; i++) {
			let chkToF = $("span.delIcon>input.chkDel").eq(i).prop("checked");
			if (chkToF == false) falseCnt++; 	
		}
	
	    if (falseCnt == 0) {
	    	$("input#chkAll").prop("checked", true);
	    } else if (falseCnt > 0){
	    	$("input#chkAll").prop("checked", false);
	    }
	});
	
	// 삭제 프로세스 시작
	$("#btnDel").click(function(){
		
		
		let chkLen = $("span.delIcon>input.chkDel").length;
		let trueCnt = 0;
		for (let i=0; i<chkLen; i++) {
			let chkToF = $("span.delIcon>input.chkDel").eq(i).prop("checked");
			if (chkToF == true) trueCnt++; 	
		}
		if (trueCnt == 0) {
			alert("삭제할 상품을 선택하세요.");
		} else {
			let delConfirm = confirm("선택된 상품을 삭제하시겠습니까?");
			if (delConfirm) {
				$("form#chkDelForm").submit();
			} else {
				alert("취소하셨습니다.");
			}
		}
	});
	
	// 선택 삭제, 일괄 삭제 끝
	
	
 });