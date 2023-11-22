<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ page import="com.veg.ksj.admin.controller.AdminLogout" %>
<%@ page import="com.veg.hjj.member.dto.Member" %>
<%
    Member loginMember = (Member)session.getAttribute("loginMember");
    if (loginMember != null) {
        System.out.println(loginMember.getMemberNo());
    }

%>
<!DOCTYPE html>
<head>
    <title>채소랑</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/animate.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/magnific-popup.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/aos.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/ionicons.min.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/jquery.timepicker.css">


    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/flaticon.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/icomoon.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">
    <script src="<%=request.getContextPath() %>/js/jquery-3.7.0.min.js"></script>
</head>
<body class="goto-here">
<style>
    /* 여백 조절 스타일 */
    .navbar-nav {
        margin-top: 20px; /* 네비게이션 바 전체의 위쪽 여백 */
    }

    .navbar-nav .nav-item {
        margin-bottom: 10px; /* 각 네비게이션 아이템의 아래쪽 여백 */
    }

    .navbar-nav .cta-colored {
        margin-top: 20px; /* [0] 아이템의 위쪽 여백 */
    }

    .navbar-nav .btn-primary,
    .navbar-nav .btn-outline-secondary {
        margin-top: 10px; /* 버튼 위쪽 여백 */
        margin-bottom: 3px; /* 버튼 아래쪽 여백 */
    }

    .navbar-nav .important-button {
        margin-top: 3px; /* 중요 버튼 위쪽 여백 */
    }

    .navbar-nav span {
        margin-top: 3px; /* 환영 메세지 위쪽 여백 */
    }


</style>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="<%=request.getContextPath()%>/main.do">
            <img src="<%=request.getContextPath() %>/images/brand_image (4).png" alt="브랜드 로고" style="max-width:70%">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <style>
            /* 추가된 스타일 */
            .navbar-nav {
                margin-top: 20px; /* 위쪽 여백 조정 */
            }
        </style>
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="index.html" class="nav-link">정기배송</a></li>
                <li class="nav-item"><a class="nav-link" href="index.html">채소농장</a></li>

                <li class="nav-item" style="list-style-type: none;"><a
                        href="<%=request.getContextPath() %>/community/communitymain.do" class="nav-link">커뮤니티</a></li>

                <li class="nav-item" style="list-style-type: none;"><a
                        href="<%=request.getContextPath() %>/notice/noticeList.do" class="nav-link">고객센터</a></li>

                <li class="nav-item" style="list-style-type: none;"><a href="cart.html"
                                                                       class="nav-link"><span
                        class="icon-shopping_cart"></span>[0]</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <%if (loginMember == null) { %>
                <li class="nav-item"><a href="<%=request.getContextPath()%>/member/login.do" class="nav-link">로그인</a>
                </li>
                <%} else {%>


                <div style="display: flex; flex-direction: column; margin-bottom: 10px; padding-bottom: 10px;">
                    <div style="display: flex; align-items: center; justify-content: space-between;">`
                        <style>
                            /* 호버 시에 녹색으로 변경 */
                            .important-button:hover {
                                color: #28a745;
                            }
                        </style>
                        <button type="button" class="btn btn-primary btn-sm important-button"
                                onclick="location.replace('<%=request.getContextPath()%>/myInfo.do')"
                                style="padding: .6rem !important; font-size: .72rem !important; margin: 0 !important; ">
                            마이페이지
                        </button>&nbsp;&nbsp;

                        <button type="button" class="btn btn-outline-secondary btn-sm important-button"
                                style="margin-left: 10px !important; padding: .6rem !important; font-size: .72rem !important; margin: 0 !important;">
                            로그아웃
                        </button>
                    </div>
                    <div style="display: flex; align-items: center; justify-content: space-between; margin-top: 3px;">
        <span style="font-weight: bolder; margin-left: 10%; font-size: .88rem !important;">
            <%=loginMember.getMemberName() %>님 환영합니다.
        </span>
                    </div>
                </div>


                <%} %>
            </ul>
        </div>
    </div>
</nav>


<%--===============================================================================================================--%>

<style>
    #Smallchat .Messages, #Smallchat .Messages_list {
        -webkit-box-flex: 1;
        -webkit-flex-grow: 1;
        -ms-flex-positive: 1;
        flex-grow: 1;
    }

    .chat_close_icon {
        cursor: pointer;
        color: #fff;
        font-size: 16px;
        position: absolute;
        right: 12px;
        z-index: 9;
    }

    .chat_on {
        position: fixed;
        z-index: 10;
        width: 45px;
        height: 45px;
        right: 15px;
        bottom: 20px;
        background-color: #8a57cf;
        color: #fff;
        border-radius: 50%;
        text-align: center;
        padding: 9px;
        box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12) !important;
        cursor: pointer;
        display: block;
    }

    .chat_on_icon {
        color: #fff;
        font-size: 25px;
        text-align: center;
    }

    /*
    #Smallchat,#Smallchat * {
     box-sizing:border-box;
     -webkit-font-smoothing:antialiased;
     -moz-osx-font-smoothing:grayscale;
     -webkit-tap-highlight-color:transparent
    }
    */
    #Smallchat .Layout {
        pointer-events: auto;
        box-sizing: content-box !important;
        z-index: 999999999;
        position: fixed;
        bottom: 20px;
        min-width: 50px;
        max-width: 300px;
        max-height: 30px;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column;
        -webkit-box-pack: end;
        -webkit-justify-content: flex-end;
        -ms-flex-pack: end;
        justify-content: flex-end;
        border-radius: 50px;
        box-shadow: 5px 0 20px 5px rgba(0, 0, 0, .1);
        -webkit-animation: appear .15s cubic-bezier(.25, .25, .5, 1.1);
        animation: appear .15s cubic-bezier(.25, .25, .5, 1.1);
        -webkit-animation-fill-mode: forwards;
        animation-fill-mode: forwards;
        opacity: 0;
        -webkit-transition: right .1s cubic-bezier(.25, .25, .5, 1), bottom .1s cubic-bezier(.25, .25, .5, 1), min-width .2s cubic-bezier(.25, .25, .5, 1), max-width .2s cubic-bezier(.25, .25, .5, 1), min-height .2s cubic-bezier(.25, .25, .5, 1), max-height .2s cubic-bezier(.25, .25, .5, 1), border-radius 50ms cubic-bezier(.25, .25, .5, 1) .15s, background-color 50ms cubic-bezier(.25, .25, .5, 1) .15s, color 50ms cubic-bezier(.25, .25, .5, 1) .15s;
        transition: right .1s cubic-bezier(.25, .25, .5, 1), bottom .1s cubic-bezier(.25, .25, .5, 1), min-width .2s cubic-bezier(.25, .25, .5, 1), max-width .2s cubic-bezier(.25, .25, .5, 1), min-height .2s cubic-bezier(.25, .25, .5, 1), max-height .2s cubic-bezier(.25, .25, .5, 1), border-radius 50ms cubic-bezier(.25, .25, .5, 1) .15s, background-color 50ms cubic-bezier(.25, .25, .5, 1) .15s, color 50ms cubic-bezier(.25, .25, .5, 1) .15s

    }

    #Smallchat .Layout-right {
        right: 20px
    }

    #Smallchat .Layout-open {
        overflow: hidden;
        min-width: 300px;
        max-width: 300px;
        height: 500px;
        max-height: 500px;
        border-radius: 10px;
        color: #fff;
        -webkit-transition: right .1s cubic-bezier(.25, .25, .5, 1), bottom .1s cubic-bezier(.25, .25, .5, 1.1), min-width .2s cubic-bezier(.25, .25, .5, 1.1), max-width .2s cubic-bezier(.25, .25, .5, 1.1), max-height .2s cubic-bezier(.25, .25, .5, 1.1), min-height .2s cubic-bezier(.25, .25, .5, 1.1), border-radius 0ms cubic-bezier(.25, .25, .5, 1.1), background-color 0ms cubic-bezier(.25, .25, .5, 1.1), color 0ms cubic-bezier(.25, .25, .5, 1.1);
        transition: right .1s cubic-bezier(.25, .25, .5, 1), bottom .1s cubic-bezier(.25, .25, .5, 1.1), min-width .2s cubic-bezier(.25, .25, .5, 1.1), max-width .2s cubic-bezier(.25, .25, .5, 1.1), max-height .2s cubic-bezier(.25, .25, .5, 1.1), min-height .2s cubic-bezier(.25, .25, .5, 1.1), border-radius 0ms cubic-bezier(.25, .25, .5, 1.1), background-color 0ms cubic-bezier(.25, .25, .5, 1.1), color 0ms cubic-bezier(.25, .25, .5, 1.1);
    }

    #Smallchat .Layout-expand {
        height: 500px;
        min-height: 500px;
        display: none;
    }

    #Smallchat .Layout-mobile {
        bottom: 10px
    }

    #Smallchat .Layout-mobile.Layout-open {
        width: calc(100% - 20px);
        min-width: calc(100% - 20px)
    }

    #Smallchat .Layout-mobile.Layout-expand {
        bottom: 0;
        height: 100%;
        min-height: 100%;
        width: 100%;
        min-width: 100%;
        border-radius: 0 !important
    }

    @-webkit-keyframes appear {
        0% {
            opacity: 0;
            -webkit-transform: scale(0);
            transform: scale(0)
        }
        to {
            opacity: 1;
            -webkit-transform: scale(1);
            transform: scale(1)
        }
    }

    @keyframes appear {
        0% {
            opacity: 0;
            -webkit-transform: scale(0);
            transform: scale(0)
        }
        to {
            opacity: 1;
            -webkit-transform: scale(1);
            transform: scale(1)
        }
    }

    #Smallchat .Messenger_messenger {
        position: relative;
        height: 100%;
        width: 100%;
        min-width: 300px;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column
    }

    #Smallchat .Messenger_header, #Smallchat .Messenger_messenger {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex
    }

    #Smallchat .Messenger_header {
        -webkit-box-align: center;
        -webkit-align-items: center;
        -ms-flex-align: center;
        align-items: center;
        padding-left: 10px;
        padding-right: 40px;
        height: 40px;
        -webkit-flex-shrink: 0;
        -ms-flex-negative: 0;
        flex-shrink: 0
    }


    #Smallchat .Messenger_header h4 {
        opacity: 0;
        font-size: 16px;
        -webkit-animation: slidein .15s .3s;
        animation: slidein .15s .3s;
        -webkit-animation-fill-mode: forwards;
        animation-fill-mode: forwards
    }

    #Smallchat .Messenger_prompt {
        margin: 0;
        font-size: 16px;
        line-height: 18px;
        font-weight: 400;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis
    }

    @-webkit-keyframes slidein {
        0% {
            opacity: 0;
            -webkit-transform: translateX(10px);
            transform: translateX(10px)
        }
        to {
            opacity: 1;
            -webkit-transform: translateX(0);
            transform: translateX(0)
        }
    }

    @keyframes slidein {
        0% {
            opacity: 0;
            -webkit-transform: translateX(10px);
            transform: translateX(10px)
        }
        to {
            opacity: 1;
            -webkit-transform: translateX(0);
            transform: translateX(0)
        }
    }

    #Smallchat .Messenger_content {
        height: 450px;
        -webkit-box-flex: 1;
        -webkit-flex-grow: 1;
        -ms-flex-positive: 1;
        flex-grow: 1;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column;
        background-color: #fff;
    }

    #Smallchat .Messages {
        position: relative;
        -webkit-flex-shrink: 1;
        -ms-flex-negative: 1;
        flex-shrink: 1;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column;
        overflow-x: hidden;
        overflow-y: auto;
        padding: 10px;
        background-color: #fff;
        -webkit-overflow-scrolling: touch;
    }


    #Smallchat .Input {
        position: relative;
        width: 100%;
        -webkit-box-flex: 0;
        -webkit-flex-grow: 0;
        -ms-flex-positive: 0;
        flex-grow: 0;
        -webkit-flex-shrink: 0;
        -ms-flex-negative: 0;
        flex-shrink: 0;
        padding-top: 17px;
        padding-bottom: 15px;
        color: #96aab4;
        background-color: #fff;
        border-top: 1px solid #e6ebea;
    }

    #Smallchat .Input-blank .Input_field {
        max-height: 20px;
    }

    #Smallchat .Input_field {
        width: 100%;
        resize: none;
        border: none;
        outline: none;
        padding: 0;
        padding-right: 0px;
        padding-left: 0px;
        padding-left: 20px;
        padding-right: 75px;
        background-color: transparent;
        font-size: 16px;
        line-height: 20px;
        min-height: 20px !important;
    }

    #Smallchat .Input_button-emoji {
        right: 45px;
    }

    #Smallchat .Input_button {
        position: absolute;
        bottom: 15px;
        width: 25px;
        height: 25px;
        padding: 0;
        border: none;
        outline: none;
        background-color: transparent;
        cursor: pointer;
    }

    #Smallchat .Input_button-send {
        right: 15px;
    }

    #Smallchat .Input-emoji .Input_button-emoji .Icon, #Smallchat .Input_button:hover .Icon {
        -webkit-transform: scale(1.1);
        -ms-transform: scale(1.1);
        transform: scale(1.1);
        -webkit-transition: all .1s ease-in-out;
        transition: all .1s ease-in-out;
    }

    #Smallchat .Input-emoji .Input_button-emoji .Icon path, #Smallchat .Input_button:hover .Icon path {
        fill: #2c2c46;
    }
</style>
<script>


    // CHAT BOOT MESSENGER////////////////////////


    $(document).ready(function () {
        $(".chat_on").click(function () {
            $(".Layout").toggle();
            $(".chat_on").hide(300);
        });

        $(".chat_close_icon").click(function () {
            $(".Layout").hide();
            $(".chat_on").show(300);
        });

    });
</script>
<%--===============================================================================================================--%>

<div class="container">
    <div class="row">
        <div id="Smallchat">
            <div class="Layout Layout-open Layout-expand Layout-right"
                 style="background-color: #82AE46;color: rgb(255, 255, 255);opacity: 5;border-radius: 10px;">
                <div class="Messenger_messenger">
                    <div class="Messenger_header" style="background-color: #82AE46; color: rgb(255, 255, 255);">
                        <h4 class="Messenger_prompt" style="color:#FFFFFF">무엇을 도와드릴까요?</h4> <span
                            class="chat_close_icon"><i
                            class="fa fa-window-close" aria-hidden="true"></i></span></div>
                    <div class="Messenger_content">
                        <div class="Messages">
                            <div class="Messages_list"></div>
                        </div>
                        <div class="Input Input-blank">
                            <textarea class="Input_field" placeholder="Send a message..."
                                      style="height: 20px;"></textarea>
                            <button class="Input_button Input_button-emoji">
                                <div class="Icon" style="width: 18px; height: 18px;">
                                    <svg width="56px" height="56px" viewBox="1332 47 56 56" version="1.1"
                                         xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                         style="width: 18px; height: 18px;">
                                        <g id="emoji" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"
                                           transform="translate(1332.000000, 47.000000)">
                                            <path d="M28,56 C12.536027,56 0,43.463973 0,28 C0,12.536027 12.536027,0 28,0 C43.463973,0 56,12.536027 56,28 C56,43.463973 43.463973,56 28,56 Z M28,50 C40.1502645,50 50,40.1502645 50,28 C50,15.8497355 40.1502645,6 28,6 C15.8497355,6 6,15.8497355 6,28 C6,40.1502645 15.8497355,50 28,50 Z"
                                                  id="Oval-8" fill="#96AAB4" fill-rule="nonzero"></path>
                                            <path d="M28,47 C18.0588745,47 10,38.9411255 10,29 C10,27.5224898 11.5469487,26.5550499 12.8754068,27.2017612 C13.0116063,27.2662365 13.0926181,27.3037345 13.1866998,27.3464814 C13.4611235,27.4711684 13.7819537,27.6111958 14.1451774,27.7627577 C15.1908595,28.199088 16.3591406,28.6365764 17.6173846,29.0449298 C21.1841638,30.2025005 24.7379224,30.8945075 28,30.8945075 C31.2620776,30.8945075 34.8158362,30.2025005 38.3826154,29.0449298 C39.6408594,28.6365764 40.8091405,28.199088 41.8548226,27.7627577 C42.2180463,27.6111958 42.5388765,27.4711684 42.8133002,27.3464814 C42.9073819,27.3037345 42.9883937,27.2662365 43.0558366,27.2344634 C44.4530513,26.5550499 46,27.5224898 46,29 C46,38.9411255 37.9411255,47 28,47 Z M28,43 C34.6510529,43 40.2188483,38.3620234 41.6456177,32.1438387 C40.9980758,32.3847069 40.320642,32.6213409 39.6173846,32.8495777 C35.6841638,34.1260741 31.7379224,34.8945075 28,34.8945075 C24.2620776,34.8945075 20.3158362,34.1260741 16.3826154,32.8495777 C15.679358,32.6213409 15.0019242,32.3847069 14.3543823,32.1438387 C15.7811517,38.3620234 21.3489471,43 28,43 Z"
                                                  id="Oval-8" fill="#96AAB4" fill-rule="nonzero"></path>
                                            <path d="M19,15 L19,20 C19,21.1045695 19.8954305,22 21,22 C22.1045695,22 23,21.1045695 23,20 L23,15 C23,13.8954305 22.1045695,13 21,13 C19.8954305,13 19,13.8954305 19,15 Z"
                                                  id="Line" fill="#96AAB4" fill-rule="nonzero"></path>
                                            <path d="M32,15 L32,20 C32,21.1045695 32.8954305,22 34,22 C35.1045695,22 36,21.1045695 36,20 L36,15 C36,13.8954305 35.1045695,13 34,13 C32.8954305,13 32,13.8954305 32,15 Z"
                                                  id="Line-Copy-2" fill="#96AAB4" fill-rule="nonzero"></path>
                                        </g>
                                    </svg>
                                </div>
                            </button>
                            <button class="Input_button Input_button-send">
                                <div class="Icon" style="width: 18px; height: 18px;">
                                    <svg width="57px" height="54px" viewBox="1496 193 57 54" version="1.1"
                                         xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                         style="width: 18px; height: 18px;">
                                        <g id="Group-9-Copy-3" stroke="none" stroke-width="1" fill="none"
                                           fill-rule="evenodd"
                                           transform="translate(1523.000000, 220.000000) rotate(-270.000000) translate(-1523.000000, -220.000000) translate(1499.000000, 193.000000)">
                                            <path d="M5.42994667,44.5306122 L16.5955554,44.5306122 L21.049938,20.423658 C21.6518463,17.1661523 26.3121212,17.1441362 26.9447801,20.3958097 L31.6405465,44.5306122 L42.5313185,44.5306122 L23.9806326,7.0871633 L5.42994667,44.5306122 Z M22.0420732,48.0757124 C21.779222,49.4982538 20.5386331,50.5306122 19.0920112,50.5306122 L1.59009899,50.5306122 C-1.20169244,50.5306122 -2.87079654,47.7697069 -1.64625638,45.2980459 L20.8461928,-0.101616237 C22.1967178,-2.8275701 25.7710778,-2.81438868 27.1150723,-0.101616237 L49.6075215,45.2980459 C50.8414042,47.7885641 49.1422456,50.5306122 46.3613062,50.5306122 L29.1679835,50.5306122 C27.7320366,50.5306122 26.4974445,49.5130766 26.2232033,48.1035608 L24.0760553,37.0678766 L22.0420732,48.0757124 Z"
                                                  id="sendicon" fill="#96AAB4" fill-rule="nonzero"></path>
                                        </g>
                                    </svg>
                                </div>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!--===============CHAT ON BUTTON STRART===============-->
            <div class="chat_on"><span class="chat_on_icon"><i class="fa fa-comments" aria-hidden="true"></i></span>
            </div>
            <!--===============CHAT ON BUTTON END===============-->
        </div>
    </div>
</div>

<%--===============================================================================================================--%>


<%@ page
        import="java.util.List,com.veg.seoj.cscenter.model.dto.Inquiry,java.sql.Timestamp,java.text.SimpleDateFormat" %>
<%@ page import="com.veg.seoj.cscenter.model.dto.InquiryComment" %>
<%@ page import="com.veg.hjj.member.dto.Member" %>
<%@ page import="java.util.ArrayList" %>
<%
    Inquiry inquiry = (Inquiry)request.getAttribute("inquiry");
    System.out.println("뷰어 페이지 " + (Inquiry)request.getAttribute("inquiry"));
    List<InquiryComment> inquiryComments = (List<InquiryComment>)request.getAttribute("inquryComments");
    if (inquiryComments == null || inquiryComments.get(0).getInquiryCommentNo() == 0) {
        System.out.println("코멘트 없음");
        inquiryComments = new ArrayList<>();
    }
    System.out.println("뷰어 페이지 코멘트 " + (List<InquiryComment>)request.getAttribute("inquryComments"));
%>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css/main.css"/>
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css2/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css2/css/animate.css">

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css2/css/owl.carousel.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css2/css/owl.theme.default.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css2/css/magnific-popup.css">

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css2/css/aos.css">

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css2/css/ionicons.min.css">

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css2/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css2/css/jquery.timepicker.css">


<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css2/css/flaticon.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css2/css/icomoon.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/sjcss/css2/style.css">
<style>
    #sidebar {
        padding-top: 70px;
        flex: 1; /* 사이드바가 남은 공간을 모두 차지하도록 설정 */
        margin-right: 20px; /* 사이드바와 board-container 사이에 20px 간격 추가 */
    }

    #container-wrapper {
        display: flex;
    }

    #sidebar {
        padding-top: 70px;
        flex: 1; /* 사이드바가 남은 공간을 모두 차지하도록 설정 */
    }

    #board-container {
        margin: 0 auto;
        margin-top: 50px;
        padding: 50px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        flex: 1.5; /* board-container가 사이드바의 2배의 너비를 차지하도록 설정 */
    }
</style>

<script>
    내용입력여부
    확인
    후
    전송
</script>
<div class="container">
    <div class="row">
        <div id="container-wrapper">
            <!-- Sidebar -->
            <div id="sidebar">
                <div class="inner">
                    <!-- Menu -->
                    <nav id="menu">
                        <header class="major">
                            <h2>1:1 문의</h2>
                        </header>
                        <ul>
                            <li>

                            <li class="opner" style="list-style-type: none;"><a
                                    href="<%=request.getContextPath() %>/notice/noticeList.do" class="nav-link">공지사항</a>
                            </li>

                            </li>
                            <li>
                                <span class="opener">자주 묻는 질문</span>
                                <%--               <ul>
                                                   <li><a href="myreview.html">나의 리뷰 </a></li>
                                                   <li><a href="bookmark.html">북마크</a></li>
                                                   <li><a href="#">1:1문의</a></li>
                                               </ul>--%>
                            </li>
                            <li>

                                <a href="<%=request.getContextPath() %>/inquiry/inquiryList.do" class="nav-link"
                                   class="opener">1:1 문의</a>
                                <!-- 											<ul>
                                                                                <li><a href="myinfo.html">내 정보 수정</a></li>
                                                                                <li><a href="myaddress.html">배송지 관리</a></li>
                                                                            </ul> -->
                            </li>
                            <!-- 										<li><a onclick="confirmLogout()">로그아웃</a></li> -->
                            <li>
                                <span class="opener">고객의 소리(x)</span>
                                <!-- 											<ul>
                                                                                <li><a href="myinfo.html">내 정보 수정</a></li>
                                                                                <li><a href="myaddress.html">배송지 관리</a></li>
                                                                            </ul> -->
                            </li>
                        </ul>
                    </nav>

                </div>
            </div>
            <%--        <% if (inquiry != null) {%>--%>
            <style>
                #board-container {
                    margin: 0 auto;
                    margin-top: 50px;
                    padding: 50px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    border-radius: 10px;
                }

                .board-header h2 {
                    font-size: 24px;
                    margin-bottom: 20px;
                }

                .board-content {
                    border: none; /* 안쪽 테두리 없애기 */
                    border-radius: 5px;
                }

                /*         .board-details {
                             margin-bottom: 20px;
                         }*/

                .board-detail-row {
                    display: flex;

                    margin-bottom: 10px;
                    /*                align-items: flex-start;*/
                }

                .board-top-padding {
                    margin-top: 30px;
                }

                /*           .board-detail-row:first-child {
                               margin-top: 30px; !* 여백 값 조정 *!
                           }*/

                .board-detail-label {
                    flex: 0 0 120px;
                    font-weight: bold;
                    margin-left: 20px;
                    align-items: center;
                    justify-content: center;
                }

                .board-detail-label-title {
                    flex: 0 0 120px;
                    font-weight: bold;
                    margin-left: 20px;
                    align-items: center;
                    justify-content: center;
                    margin-top: 50px;
                }

                .board-detail-value {
                    flex: 1;
                }

                .board-file img {
                    margin-right: 5px;
                }

                .board-content-text {
                    margin-top: 50px;
                    margin-top: 50px;
                    white-space: pre-wrap;
                    /*height: 300px;*/
                    display: flex;
                    /*                align-items: center;
                                    justify-content: center;*/
                }

                .board-actions {
                    margin-top: 20px;
                    display: flex;
                    justify-content: center; /* 수정하기 및 삭제하기 버튼 오른쪽 정렬 */
                }

                .comment-actions {
                    margin-top: 20px;
                    display: flex;
                    justify-content: flex-end; /* 수정하기 및 삭제하기 버튼 오른쪽 정렬 */
                }

                .comment-container {
                    margin-top: 20px;
                }

                .comment-editor {
                    margin-bottom: 20px;
                }

                .comment-list {
                    padding-top: 20px;
                }


                #comment-container {
                    margin-top: 20px;

                    padding: 20px;
                    border-radius: 10px;
                }

                .comment-editor {
                    margin-bottom: 20px;
                }

                #tbl-comment {
                    width: 80%;
                    border-collapse: collapse;
                    margin-top: 20px;
                }

                #tbl-comment th,
                #tbl-comment td {

                    padding: 10px;
                    text-align: left;
                }

                #tbl-comment .level1 td {

                }

                .comment-writer,
                .comment-date {
                    display: inline-block;
                    font-size: 12px;
                    margin-bottom: 5px;
                }

                .comment-content {
                    white-space: pre-wrap;
                }

                .btn-reply,
                .btn-delete,
                .btn-insert,
                .btn-insert2 {

                    border: none;
                    padding: 5px 10px;
                    cursor: pointer;
                    border-radius: 5px;
                    margin-right: 5px;
                }

            </style>

            <section id="board-container">
                <div class="board-top-padding">
                </div>
                <form action='<%=request.getContextPath()%>/inquiry/inquiryWriteEnd.do'
                      enctype="multipart/form-data" method="post">

                    <input type="hidden" name="memberNo"
                           value="<%= (loginMember != null) ? loginMember.getMemberNo() : -1 %>">
                    <input type="hidden" name="orderNo">
                    <input type="hidden" name="productNo">
                    <input type="hidden" name="memberName"
                           value="<%= (loginMember != null) ? loginMember.getMemberName() : "" %>">
                    <input type="hidden" name="totalPrice">
                    <input type="hidden" name="orderStatus">
                    <input type="hidden" name="productionName">
                    <input type="hidden" name="productImg">
                    <input type="hidden" name="refundNo">
                    <input type="date" name="refundDate" style="display: none;">
                    <div class="board-detail-row">
                        <span class="board-detail-label">문의 분류</span>
                        <span class="board-detail-value" name="category"><%=inquiry.getInquiryType() %></span>
                    </div>
                    <hr style="border-top: 1px solid rgba(0, 0, 0, 0.1) !important;">
                    <div class="board-detail-row">
                        <span class="board-detail-label" name="title">제목</span>
                        <span class="board-detail-value"><%=inquiry.getInquiryTitle() %></span>
                    </div>
                    <div class="board-content">
                        <div class="board-details">
                            <div class="board-detail-row">
                                <span class="board-detail-label" name="writer">작성자</span>
                                <span class="board-detail-value"
                                      style="font-weight: bolder"><%=inquiry.getMemberName() %></span>
                            </div>
                            <div class="board-detail-row">
                                <%
                                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
                                    String sdfResult = sdf.format(inquiry.getInquiryDate());
                                %>
                                <span class="board-detail-label">작성일</span>
                                <span class="board-detail-value"><%=sdfResult %></span>
                            </div>
                            <hr style="border-top: 1px solid rgba(0, 0, 0, 0.1) !important;">
                            <div class="board-detail-row">
                                <span class="board-detail-label" name="orderNo">주문 번호</span>
                                <span class="board-detail-value"><%=inquiry.getFkOrderNo() %></span>
                            </div>
                            <div class="board-detail-row">
                                <span class="board-detail-label" name="productNo">상품명 </span>
                                <span class="board-detail-value"><%=inquiry.getProductionName() %></span>
                            </div>
                            <hr style="border-top: 1px solid rgba(0, 0, 0, 0.1) !important;">
                            <div class="board-detail-row">
                                <span class="board-detail-label" name="refundNo">환불신청 번호 </span>
                                <span class="board-detail-value"><%=inquiry.getRefundNo() %></span>
                            </div>
                            <div class="board-detail-row">
                                <span class="board-detail-label">환불신청 일자 </span>
                                <span class="board-detail-value"><%=inquiry.getRefundDate() %></span>
                            </div>
                            <hr style="border-top: 1px solid rgba(0, 0, 0, 0.1) !important;">
                            <div class="board-detail-row">
                                <span class="board-detail-label" name="upfile2">첨부파일</span>
                                <div class="board-file">
                                    <% if (inquiry.getInquiryOriginalFilename() != null) { %>
                                    <img src="<%=request.getContextPath()%>/images/file.png" width="25">
                                    <span><%=inquiry.getInquiryOriginalFilename() %></span>
                                    <% } %>
                                </div>
                            </div>
                            <hr style="border-top: 1px solid rgba(0, 0, 0, 0.1) !important;">
                            <div class="board-detail-row">
                                <span class="board-detail-label-title">내용</span>
                                <div class="board-content-text"><%=inquiry.getInquiryContent() %>
                                </div>
                            </div>
                        </div>
                        <%-- 글작성자/관리자인 경우 수정삭제 가능 --%>
                        <div class="board-actions">
                            <button class="btn btn-primary btn-sm">수정하기</button>
                            &nbsp;&nbsp;
                            <button class="btn btn-primary btn-sm">삭제하기</button>
                        </div>

                </form>

                <form action="<%=request.getContextPath() %>/board/insertComment.do" method="post">
                    <div id="comment-container" style="margin-top: 50px;">
                            <%if (!inquiryComments.isEmpty()) { %>
                        <div class="comment-wrapper">
                            <%
                                SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
                                String sdfResult2 = "";
                            %>
                            <% for (InquiryComment inquiryComment : inquiryComments) {
                                if (inquiryComment.getFkInquiryNo() != 0) {%>


                            <div class="comment" style="margin: 0 30px;">
                                <div class="comment-writer"
                                     style="font-weight: bolder"><%=inquiryComment.getInquiryCommentWriter() %>
                                </div>
                                <%
                                    sdfResult2 = sdf2.format(inquiryComment.getInquiryCommentDate());
                                %>
                                <div class="comment-date">
                                    <span class="comment-date-value"><%=sdfResult2 %></span>
                                </div>
                                <div class="comment-content"><%=inquiryComment.getInquiryCommentContent() %>
                                </div>
                                <div class="comment-actions">
                                    <%--                <button class="btn-reply" value="<%=inquiryComment.getInquiryCommentNo()%>">답글
                                                    </button>--%>
                                    <%
                                        if (loginMember != null && loginMember
                                                .getMemberId()
                                                .equals("admin")) {
                                    %>

                                    <button type="submit" class="btn btn-primary btn-sm"
                                    >삭제
                                    </button>
                                    <%--               <button class="btn-delete" class="btn btn-primary btn-sm">삭제</button>--%>
                                    <% } %>
                                </div>
                            </div>
                            <% }%>
                            <% } %>
                        </div>

                            <%} %>
                </form>
                <div class="comment-editor">
                    <%--
                                        <script>
                                            var xhr = new XMLHttpRequest();

                                            // HTTP 요청 헤더에 사용자 인증 정보를 추가합니다.
                                            var username = "your_username";
                                            var password = "your_password";
                                            var authHeader = "Basic " + btoa(username + ":" + password); // 사용자명과 암호를 Base64로 인코딩
                                            xhr.setRequestHeader("Authorization", authHeader); // "Authorization" 헤더에 사용자 인증 정보 추가

                                            // HTTP 요청을 열고 보냅니다.
                                            xhr.open("GET", "https://example.com/api/resource", true);
                                            xhr.send();

                                        </script>
                    --%>


                    <form action="<%=request.getContextPath() %>/board/insertComment.do" method="post">
                        <input type="hidden" name="boardRef" value="<%=inquiry.getInquiryNo()%>">
                        <input type="hidden" name="level" value="1">
                        <input type="hidden" name="writer"
                               value="<%=loginMember!=null?loginMember.getMemberName():"" %>">
                        <input type="hidden" name="boardCommentRef" value="0">
                        <textarea name="content" cols="55" rows="3"
                                  style="margin-top: 30px; border: 1px;!important; border: 1px solid #E0EDA2 !important;">

                                </textarea>
                        <div class="comment-actions">
                            <button type="submit" id="btn-insert" class="btn btn-primary btn-sm"
                            >등록
                            </button>
                            &nbsp;
                            <button type="button" id="btn-insert2" class="btn btn-primary btn-sm"
                                    style="margin-right: 20px;"
                            >삭제
                            </button>
                        </div>
                    </form>
                </div>
            </section>
        </div>
    </div>


</div>
<script>
    $(".comment-editor>form>textarea[name=content]").focus(e => {
        if (<%=loginMember==null%>) {
            alert("로그인 후 이용할 수 있는 서비스입니다.");
            $("#userId").focus();
        }
    });
    $(".btn-reply").click(e => {

        const $tr = $("<tr>");
        const $td = $("<td>").attr("colspan", "2");
        const $form = $(".comment-editor>form").clone();
        console.log($form);
        $form.find("input[name=level]").val("2");
        $form.find("textarea").attr("rows", "1");
        $form.find("button").removeAttr("id").addClass("btn-insert2");
        $form.find("input[name=boardCommentRef]").val($(e.target).val());

        $td.append($form);
        $tr.append($td);

        $(e.target).parents("tr")
            .after($tr);
    });
</script>


</div>
</body>
<%@ include file="/views/common/footer.jsp" %>
