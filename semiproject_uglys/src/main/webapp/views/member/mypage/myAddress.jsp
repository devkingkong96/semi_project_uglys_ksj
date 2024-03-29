<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.veg.hjj.member.dto.*"%>
<%
/* if(session.getAttribute("loginMember") == null ){
	response.sendRedirect(request.getContextPath()+"/views/index.jsp");
	return;
} */
	
Member loginMember=(Member)session.getAttribute("loginMember");


	
%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css/main.css" />
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css2/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css2/css/animate.css">

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css2/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css2/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css2/css/magnific-popup.css">

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css2/css/aos.css">

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css2/css/ionicons.min.css">

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css2/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css2/css/jquery.timepicker.css">


<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css2/css/flaticon.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css2/css/icomoon.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/jycss/css2/style.css">
<body class="is-preload">
	<div class="address-container">
		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<div class="address-form">
					<h2>새 배송지 등록</h2>
					<form action="<%=request.getContextPath() %>/myaddressend.do"
						method="post">
						<div class="group-input">
							<!--  <label for="username">주소</label> -->
							<input class="form-control" type="text" id="sample6_postcode"
								placeholder="우편번호">
						</div><br>
						<div class="group-input">
							<!-- <label for="username">기존 비밀번호</label> -->
							<input class="site-btn register-btn" type="button"
								onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
						</div><br>
						<div class="group-input">
							<input class="form-control" name="cstmAddress1" type="text"
								id="sample6_address" placeholder="주소">
						</div><br>
						<div class="group-input">
							<input class="form-control" name="cstmAddress2" type="text"
								id="sample6_detailAddress" placeholder="상세주소">
						</div><br>
						<div class="group-input">
							<input class="form-control" type="hidden"
								id="sample6_extraAddress" placeholder="참고항목">
						</div>
						<button type="submit" class="site-btn register-btn" id="complete"
							onclick="return fn_addressvalidate();">등록하기</button>
					</form>
					<div class="switch-login">
					<a href="<%=request.getContextPath()%>/main.do" class="or-login">돌아가기</a>
				</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Scripts -->
	<script src="<%=request.getContextPath() %>/js/jyjs/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/js/jyjs/js/browser.min.js"></script>
	<script
		src="<%=request.getContextPath() %>/js/jyjs/js/breakpoints.min.js"></script>
	<script src="<%=request.getContextPath() %>/js/jyjs/js/util.js"></script>
	<script src="<%=request.getContextPath() %>/js/jyjs/js/main.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
    const fn_addressvalidate=()=>{
    	window.location.href='<%=request.getContextPath()%>/myaddress.do';
    }
</script>