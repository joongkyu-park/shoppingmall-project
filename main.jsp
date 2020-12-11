<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="UTF-8" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/shop.css">

    <title>아메카지 브랜드 MOAA(모아) 공식몰 입니다.</title>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('.slider').bxSlider();
        });
    </script>
</head>

<body>
    <style>
        .slider div {
            width: 40em;
            height: 1000px;
            margin: 0;
            overflow:hidden; position:relative;
        }

        .slider img {

            position: absolute;

            left: 25%;

            margin-left:0px;

            height: 1000px;

        }
    </style>
    <header>
        <div id="logo">
            <a href="index.jsp">
                <img src="images/moaa.png" width="170px" height="30px">
            </a>
        </div>

        <div class="menubar">
            <div class="menu">
                <a href="http://www.facebook.com" target="_blank">
                    <i class="fab fa-facebook"></i>
                </a>
                <a href="http://www.instagram.com" target="_blank">
                    <i class="fab fa-instagram"></i>
                </a>
                <a href="https://section.blog.naver.com/" target="_blank">
                    <i class="fab fa-blogger-b"></i>
                </a>
            </div>
            <div class="menu" id="menu">
                <div>
                    <a href="about.jsp" style="color:dimgray">ABOUT
                    </a>
                </div>
                <div>
                    <a href="shop.jsp" style="color:dimgray">SHOP</a></div>
                <div>
                    <a href="lookbook.jsp" style="color:dimgray">LOOKBOOK</a></div>
                <div><a href="community.jsp" style="color:dimgray">COMMUNITY</a></div>
            </div>
            <div class="menu">
                <i class="fas fa-search"></i>
                <a href="user.jsp" target="_self">
                	<i class="fas fa-user"></i>
                </a>
                <i class="fas fa-shopping-cart"></i>
            </div>
        </div>
    </header>


    <main>

        <section class="section-001">
            <div id="frontimage"><img
                    src="https://scontent-ssn1-1.xx.fbcdn.net/v/t1.0-9/124449741_953916361807892_1877991008767136684_o.jpg?_nc_cat=101&ccb=2&_nc_sid=6e5ad9&_nc_ohc=Up2kYfMyk_YAX9W30ew&_nc_ht=scontent-ssn1-1.xx&oh=5dfb660d8fb1afd0dbc01193f06f49b0&oe=5FF175A6">
            </div>

        </section>

        <section class="section-002">
            <span id="one">PERMEATED WITH WARMTH</span>
            <br><br>
            <span id="two">2020 WINER COLLECTION OPEN</span>            
        </section>

        <section class="section-003">
            <div class="container" id="row1">
                <div class="item" onclick="location.href='./product.jsp'"  style="cursor:pointer;">
                    <img src="./images/clothes.jpg" alt="">
                    <div class="cost">
                        컴포트 스포트 팬츠 셋업<br>
                        (BROWN)<br>
                        <span id="brown">176,800원</span>
                        <span id="postcost">208,000원</span>
                    </div>
                    <div class="sale">
                          SALE  
                    </div>
                </div>
                <div class="item" onclick="location.href='./product.jsp'"  style="cursor:pointer;">
                    <img src="./images/clothes.jpg" alt="">
                    <div class="cost">
                        컴포트 스포트 팬츠 셋업<br>
                        (BROWN)<br>
                        <span id="brown">176,800원</span>
                        <span id="postcost">208,000원</span>
                    </div>
                    <div class="sale">
                          SALE  
                    </div>
                </div>
                <div class="item" onclick="location.href='./product.jsp'"  style="cursor:pointer;">
                    <img src="./images/clothes.jpg" alt="">
                    <div class="cost">
                        컴포트 스포트 팬츠 셋업<br>
                        (BROWN)<br>
                        <span id="brown">176,800원</span>
                        <span id="postcost">208,000원</span>
                    </div>
                    <div class="sale">
                          SALE  
                    </div>
                </div>
                <div class="item" onclick="location.href='./product.jsp'"  style="cursor:pointer;">
                    <img src="./images/clothes.jpg" alt="">
                    <div class="cost">
                        컴포트 스포트 팬츠 셋업<br>
                        (BROWN)<br>
                        <span id="brown">176,800원</span>
                        <span id="postcost">208,000원</span>
                    </div>
                    <div class="sale">
                          SALE  
                    </div>
                </div>
            </div>
            <div class="container" id="row2">
                <div class="item" onclick="location.href='./product.jsp'"  style="cursor:pointer;">
                    <img src="./images/clothes.jpg" alt="">
                    <div class="cost">
                        컴포트 스포트 팬츠 셋업<br>
                        (BROWN)<br>
                        <span id="brown">176,800원</span>
                        <span id="postcost">208,000원</span>
                    </div>
                    <div class="sale">
                          SALE  
                    </div>
                </div>
                <div class="item" onclick="location.href='./product.jsp'"  style="cursor:pointer;">
                    <img src="./images/clothes.jpg" alt="">
                    <div class="cost">
                        컴포트 스포트 팬츠 셋업<br>
                        (BROWN)<br>
                        <span id="brown">176,800원</span>
                        <span id="postcost">208,000원</span>
                    </div>
                    <div class="sale">
                          SALE  
                    </div>
                </div>
                <div class="item" onclick="location.href='./product.jsp'"  style="cursor:pointer;">
                    <img src="./images/clothes.jpg" alt="">
                    <div class="cost">
                        컴포트 스포트 팬츠 셋업<br>
                        (BROWN)<br>
                        <span id="brown">176,800원</span>
                        <span id="postcost">208,000원</span>
                    </div>
                    <div class="sale">
                          SALE  
                    </div>
                </div>
                <div class="item" onclick="location.href='./product.jsp'"  style="cursor:pointer;">
                    <img src="./images/clothes.jpg" alt="">
                    <div class="cost">
                        컴포트 스포트 팬츠 셋업<br>
                        (BROWN)<br>
                        <span id="brown">176,800원</span>
                        <span id="postcost">208,000원</span>
                    </div>
                    <div class="sale">
                          SALE  
                    </div>
                </div>
            </div>
        </section>

        <section class="section-004">
            <main>
                <div class="slider">
                    <div><img src="https://contents.sixshop.com/thumbnails/uploadedFiles/36396/blogPost/image_1548999955589_1000.jpg" /></div>
                    <div><img src="https://contents.sixshop.com/thumbnails/uploadedFiles/36396/blogPost/image_1549000036733_1000.jpg"  /></div>
                    <div><img src="https://contents.sixshop.com/thumbnails/uploadedFiles/36396/blogPost/image_1548999955870_1000.jpg"  /></div>
                    <div><img src="https://contents.sixshop.com/thumbnails/uploadedFiles/36396/blogPost/image_1548999956376_1000.jpg"  /></div>
                    <div><img src="https://contents.sixshop.com/thumbnails/uploadedFiles/36396/blogPost/image_1548999956548_1000.jpg"  /></div>
                </div>
            </main>
        </section>

        <section class="section-005">
            <a href="http://www.instagram.com" target="_blank">@MOAA_official</a>
        </section>

    </main>

    <footer>
        <div class="menu">
            <a href="http://www.facebook.com" target="_blank">
                <i class="fab fa-facebook"></i>
            </a>
            <a href="http://www.instagram.com" target="_blank">
                <i class="fab fa-instagram"></i>
            </a>
            <a href="https://section.blog.naver.com/" target="_blank">
                <i class="fab fa-blogger-b"></i>
            </a>
        </div><br><br>
        이용약관 개인정보처리방침 사업자정보확인<br><br>

        상호: MOAA | 대표: 박중규 | 개인정보관리책임자: 박중규 | 전화: 010-1234-5678 | 이메일: xxxx@xxxx.com<br><br>

        이 웹사이트는 개인 프로젝트를 위한 웹사이트입니다. 상업적 영리적 용도가 아닙니다. 이 웹사이트는 개인 프로젝트를 위한 웹사이트입니다. 상업적 영리적 용도가 아닙니다.<br><br><br>

        <div>
            <img src="https://pbs.twimg.com/profile_images/1210194702/_____400x400.gif" width="20px" height="20px"
                onclick="location.href=' https://www.inha.ac.kr/kr/index.do'" style="cursor:pointer;"><span
                id="school">인하대학교 컴퓨터공학과</span>
        </div>
    </footer>

</html>