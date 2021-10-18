<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>MyPage</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
    <link href="<c:url value="/resources/css/mypage.css"/>" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8eb5905426.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">     

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,400i,700">
    <link href="<c:url value="/resources/css/jquery-sakura.css"/>" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/jquery-sakura.js"/>"></script>
    <script>
        $(window).load(function () {
            $('body').sakura();
        });
        </script>
</head>
<body>
    
    <div id="page">

        <header id="header" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">
            <a class="navbar-brand" >🍊Travel Jeju🍊</a>
            나의 제주 일지
        </header>

        <nav class="navbar" >
            <ul>
            <li><a href="#">HOME</a></li>
            <li><a href="#">List1</a></li>
            <li><a href="#">List2</a></li>
            <li><a href="#">List3</a></li>
            </ul>
        </nav>

        <div id="middle">

            <aside id="aside">
                <img class="icon1" src="<c:url value="/resources/img/stone1.PNG" alt="icon1" style="width: 40px; height: 45px; background-color: rgba(238, 238, 238, 0.801);">
                <h1 style="background-color: rgba(238, 238, 238, 0.801);">나의 일지</h1>
                <img class="icon2" src="<c:url value="/resources/img/stone1.PNG" alt="icon2" style="width: 40px; height: 45px; background-color: rgba(238, 238, 238, 0.801);">
                <ul class="menu" style="background-color: rgba(238, 238, 238, 0.801); list-style: none;">
                    <li style="padding-bottom: 5px; background-color: rgba(238, 238, 238, 0.801);"><a href="#notice">공지사항</a></li> 
                    <li style="padding-bottom: 5px; background-color: rgba(238, 238, 238, 0.801);"><a href="#mywrite">내가 쓴 글</a></li> 
                    <li style="padding-bottom: 5px; background-color: rgba(238, 238, 238, 0.801);"><a href="#myroute">내가 만든 경로</a></li>
                </ul>
            </aside>

            <section id="section" >
                <article id="mywrite"> 
                    <div class="cont1">
                        <table class="sub_news" cellspacing="0" summary="게시판의 글제목 리스트">
                            <caption>게시판 리스트</caption>
                            <colgroup>
                                <col width="330">
                                <col width="100">
                                <col width="80">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">제목</th>
                                    <th scope="col">글쓴이</th>
                                    <th scope="col">날짜</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="title">
                                        <a href="#">게시판 제목이 들어갑니다.</a>
                                        <img width="13" height="12" class="pic" alt="첨부이미지" src="첨부파일 ic_pic.gif">
                                        <a class="comment" href="#">[5]</a>
                                    </td>
                                    <td class="name">글쓴이이름</td>
                                    <td class="date">2021/10/15</td>
                                </tr>

                                <tr>
                                    <td class="title">
                                        <a href="#">게시판 제목이 들어갑니다.2.</a>
                                        <a class="comment" href="#"></a>
                                    </td>
                                    <td class="name">글쓴이이름</td>
                                    <td class="date">2021/10/15</td>
                                </tr>

                                <tr>
                                    <td class="title">
                                        <a href="#">게시판 제목이 들어갑니다.3.</a>
                                        <a class="comment" href="#">[2]</a>
                                    </td>
                                    <td class="name">글쓴이이름</td>
                                    <td class="date">2021/10/15</td>
                                </tr>

                                <tr>
                                    <td class="title">
                                        <a href="#">게시판 제목이 들어갑니다.4.</a>
                                        <a class="comment" href="#">[2]</a>
                                    </td>
                                    <td class="name">글쓴이이름</td>
                                    <td class="date">2021/10/15</td>
                                </tr>

                                <tr>
                                    <td class="title">
                                        <a href="#">게시판 제목이 들어갑니다.5.</a>
                                        <a class="comment" href="#">[2]</a>
                                    </td>
                                    <td class="name">글쓴이이름</td>
                                    <td class="date">2021/10/15</td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <div class="paging_comm">
                            <a href="#none" class="img_sample btn_prev">이전</a>
                            <a href="#none" class="link_page">1</a>
                            <a href="#none" class="link_page">2</a>
                            <a href="#none" class="link_page">3</a>
                            <a href="#none" class="link_page">4</a>
                            <a href="#none" class="link_page">5</a>
                            <a href="#none" class="link_page">6</a>
                            <a href="#none" class="link_page">7</a>
                            <a href="#none" class="link_page">8</a>
                            <a href="#none" class="link_page">9</a>
                            <a href="#none" class="link_page">10</a>
                            <a href="#none" class="img_sample btn_next">다음</a>
                            </div>
                    </div>
                </article>
                <div class="jejuimg1">
                    <img src="<c:url value="/resources/img/jejuimg1.PNG" alt="jejuimg1" style="width: 400px; height: 450px;">
                </div>
            </section>
        </div>
    </div>

</body>
</html>


