<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 완성하기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="/css/style.css" type="text/css">
</head>

    <body>

        <div id="wrap">
            <jsp:include page="test04_header.jsp" />

            <jsp:include page="test04_nav.jsp" />

            <section class="contents">
                <article class="main-banner">
                    <img id="img" class="h-100 w-100" alt="팬션" src="http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg">
                </article>

                <article class="d-flex main-info">
                    <div class="reserveation text-white d-flex align-items-center justify-content-center">
                        <div>
                            <h1>실시간</h1>
                            <h1>예약하기</h1>
                        </div>    
                    </div>

                    <div class="reservationCheck">

                        <div class="d-flex align-items-center mt-4 ml-3">
                            <h4 class="text-white mr-2">예약확인</h4>       
                            <label>회원<input class="radio-size mr-1" type="radio" name="member" value="yes" checked></label>
                            <label>비 회원<input class="radio-size" type="radio" name="member" value="no"></label>                                                                 
                        </div>  

                    <div class="d-flex justify-content-center">
                        <div class="mt-3 box" id="member">
                            <div class="d-flex justify-content-center">                               
                                <label class="mr-3">아이디</label> <input type="text" class="form-control h-100 col-9" id="id">  
                            </div>
                            <div class="d-flex mt-3 justify-content-center">                        
                                <label class="mr-3">비밀번호</label> <input type="password" class="form-control h-100 col-9 mr-3" id="password">
                            </div>
                        </div>

                        <div class="d-none mt-3 box" id="nonMember">
                            <div class="d-flex justify-content-center">                               
                                <label class="mr-3">이름</label> <input type="text" class="form-control h-100 col-9" id="name">  
                            </div>
                            <div class="d-flex mt-3 justify-content-center">                        
                                <label class="mr-2">전화번호</label> <input type="text" class="form-control h-100 col-9 mr-4 " id="phoneNumber">
                            </div> 
                            <div class="d-flex mt-3 justify-content-center" id="date-div">
                                <label class="mr-3">날짜</label> <input type="text" class="form-control h-100 col-9" id="dateInput">
                            </div>                                                                          
                        </div>
                    </div>
                        <buttn type="button" id="inquiryBtn" class="btn btn-success text-white float-right mt-3 mr-4">조회하기</buttn>
                    </div>

                    <div class="contact d-flex align-items-center justify-content-center">
                        <div class="text-white">
                            <h2>예약문의:</h2>
                            <h2>010-</h2>
                            <h2>1111-1111</h2>
                        </div>
                    </div>
                </article>
            </section>

            <jsp:include page="test04_footer"></jsp:include>
        </div>


        <script>

            $(document).ready(function(){

                let imgArray = ["http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg", "http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner2.jpg", "http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner3.jpg", "http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner4.jpg"];
                let count = 0;
                        
                setInterval(function(){
                    count++;                
                    if(count == imgArray.length) {
                        count = 0;
                    }         
                    $("#img").attr("src", imgArray[count]);
                }, 3000);

                $("#phoneNumber").on("change", function(){

                    let numbers = [];
                    let num = $(this).val();
              
                    if(num.length == 10){
                        numbers[0] = num.substring(0, 3);
                        numbers[1] = num.substring(3, 6);
                        numbers[2] = num.substring(6, 10);

                    }else {
                        numbers[0] = num.substring(0, 3);
                        numbers[1] = num.substring(3, 7);
                        numbers[2] = num.substring(7, 11);
                    }

                    let str = (numbers[0] + "-" + numbers[1] + "-" + numbers[2]);
                   
                    $(this).val(str); 

                });

                // 유효성 검사
                $("#inquiryBtn").on("click", function(){
                    var checkMember = $("input[name='member']:checked").val();
                    var id = $("#id").val();
                    var password = $("#password").val();
                    var name = $("#name").val();
                    var phoneNumber = $("#phoneNumber").val();
                    var checkNumber = $("#phoneNumber").val().replace(/-/g, '');
                    var date = $("#dateInput").val();
                    // var regPhone = /^(01[0]{1})([0-9]{3,4})([0-9]{4})$/;

                    if(checkMember == "yes") {

                        if(id == "") {
                            alert("아이디를 입력하세요.");
                            return;
                        }

                        if(password == "") {
                        alert("비밀번호를 입력하세요.");
                        return;
                        }
                    } else {

                        if(name == "") {
                            alert("이름을 입력하세요.");
                            return;
                        }

                        if(phoneNumber == "") {
                            alert("전화번호를 입력하세요.");
                            return;
                        }

                        if(!phoneNumber.startsWith("010")) {
                            alert("010으로 시작하는 번호만 입력 가능합니다.");
                            $("#phoneNumber").val("");
                            return;
                        }

                        if(date == "") {
                            alert("날짜를 입력하세요.");
                            return;     
                        } 
                    }
                });

                // 날짜에 datepicker삽입
                $("#dateInput").datepicker({
                    dayNamesMin:["일","월","화","수","목","금","토"],
                    dateFormat:"yy년 m월 d일",
                    firstDay:1,
                    minDate:"0"
                });

                // 비회원 버튼시
                $("input[name='member']").on("change",function(){ 
                    var memberCheck = $(this).val();
                    
                    if(memberCheck == "no") {
                        $("#nonMember").removeClass("d-none");
                        $("#member").addClass("d-none");
                    } else if(memberCheck == "yes"){
                        $("#nonMember").addClass("d-none");
                        $("#member").removeClass("d-none");
                    }

                });
            });

        </script>

    </body>
</html>