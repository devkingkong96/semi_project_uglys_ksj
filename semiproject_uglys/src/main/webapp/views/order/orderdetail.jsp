<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %>

<section class="ftco-section">
<form class="billing-form">
	<div class="container">
		<div class="row justify-content-center">
          <div class="col-xl-7 ftco-animate">
				<h3 class="mb-4 billing-heading">주문/결제하기</h3>
		          	<div class="row align-items-end">
		          		<div class="col-md-6">
		                	<div class="form-group">
	                			<label for="주문자명">주문자명</label>
	                  			<input type="text" class="form-control" placeholder="">
	                		</div>
	              		</div>
           <div class="w-100"></div>
		   	<div class="col-md-6">
		    	<div class="form-group">
		        	<label for="country">배송 요청사항</label>
		    			<div class="select-wrap">
		                  	<div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                  <select name="" id="deli-memo-choice" class="form-control" onchange="deliInputOn()">
		                    <option value>배송메모를 선택해주세요.</option>
		                    <option value="-">요청사항을 직접 입력합니다.</option>
		                  	<option value="배송 전에 미리 연락바랍니다.">배송 전에 미리 연락바랍니다.</option>
		                    <option value="부재시 경비실에 맡겨 주세요.">부재시 경비실에 맡겨 주세요.</option>
		                    <option value="부재시 전화 주시거나 문자 남겨 주세요.">부재시 전화 주시거나 문자 남겨 주세요.</option>
		                  </select>
		                </div>
		            	</div>
		            </div>
		            <div class="col-md-6">
		            	<div class="form-group">
	                	<label for="towncity">직접입력</label>
	                  <input type="text" class="form-control" id="deli-input" disabled>
	                </div>
		            </div>
		            <div class="w-100"></div>
		            <div class="col-md-6">
		            	<div class="form-group">
	                	<label for="streetaddress">우편번호</label>
	                  <input type="text" class="form-control" id="sample4_postcode" placeholder="우편번호">
	                </div>
		            </div>
		            <div class="col-md-6">
		            	<div class="form-group">
	                  <input type="button" class="btn btn-outline-secondary" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
	                </div>
		            </div>
		            <div class="w-100"></div>
		            <div class="col-md-6">
		            	<div class="form-group">
	                	<label for="towncity">도로명주소</label>
	                  <input type="text" class="form-control" id="sample4_roadAddress" placeholder="도로명주소">
	                </div>
		            </div>
		            <div class="col-md-6">
		            	<div class="form-group">
		            		<label for="postcodezip">상세주소</label>
	                  <input type="text" class="form-control" id="sample4_detailAddress" placeholder="상세주소">
	                </div>
	                <input type="hidden" id="sample4_jibunAddress" placeholder="지번주소">
	                <input type="hidden" id="sample4_extraAddress" placeholder="참고항목">
		            </div>
		            <div class="w-100"></div>
		            <div class="col-md-6">
	                <div class="form-group">
	                	<label for="phone">전화번호</label>
	                  <input type="text" class="form-control" placeholder="">
	                </div>
	              </div>
	              <div class="col-md-6">
	                <div class="form-group">
	                	<label for="emailaddress">이메일</label>
	                  <input type="email" class="form-control" placeholder="">
	                </div>
                </div>
                <div class="w-100"></div>
	            </div>
					</div>
					<div class="col-xl-5">
	          <div class="row mt-5 pt-3">
	          	<div class="col-md-12 d-flex mb-5">
	          		<div class="cart-detail cart-total p-3 p-md-4">
	          			<h3 class="billing-heading mb-4">장바구니 합계</h3>
	          			<p class="d-flex">
		    						<span>총가격</span>
		    						<span>$20.60</span>
		    					</p>
		    					<p class="d-flex">
		    						<span>배송비</span>
		    						<span>$0.00</span>
		    					</p>
		    					<p class="d-flex">
		    						<span>할인</span>
		    						<span>$3.00</span>
		    					</p>
		    					<hr>
		    					<p class="d-flex total-price">
		    						<span>총합계</span>
		    						<span>$17.60</span>
		    					</p>
								</div>
	          	</div>
	          	<div class="col-md-12">
	          		<div class="cart-detail p-3 p-md-4">
	          			<h3 class="billing-heading mb-4">결제 방식</h3>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <label><input type="radio" name="payment" class="mr-2" value="card"> 카드 결제</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <label><input type="radio" name="payment" class="mr-2" value="cacao"> 카카오페이 결제</label>
											</div>
										</div>
									</div>
									<p><input type="submit" class="btn btn-primary py-3 px-4" value="결제하기"></p>
								</div>
	          	</div>
	          </div>
          </div> <!-- .col-md-8 -->
        </div>
      </div>
     </form>
    </section> <!-- .section -->

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                              
              
            }
        }).open();
    }
</script>

	

  <script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>
	
	<script>
		function deliInputOn(){
			var select=document.getElementById("deli-memo-choice");
			var input=document.getElementById("deli-input");
			if(select.value==='-'){
				input.innerHTML = '';
				input.disabled=false;
			}else{
				input.innerHTML = '';
				input.disabled=true;
			}
		}
	</script>
	
	
	
	
	
	
	
	
    
<%@ include file="/views/common/footer.jsp" %>