<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">

<head>
    <title>Main</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- css include -->
    <jsp:include page="../includes/include_css.jsp" flush="false" />
</head>

<body>
<!-- navbar include -->
<jsp:include page="../includes/_navbar.jsp" flush="false" />


    <div class="container-fluid">
        <div class="jumbotron">
            <div class="container">
                <h1>안녕하세요.</h1>
                <p> 이 웹사이트는 Bootstrap 디자인 템플릿을 이용하였고,
                    <br /> 기능은 JAVA언어로 구현 되었습니다.</p>
                <p>
                    <a href="#" class="btn btn-primary pull-right"> 버튼</a></p>
            </div>
        </div>
        <div class="media">
            <div class="media-left"><img class="media-object" src="https://dummyimage.com/64x64/777777/fff" alt="더미이미지">
            </div>
            <div class="media-body">
                <h4 class="media-heading">간단한 제목이 들어갈 곳입니다.</h4>
                내용이 들어갑니다. 내용이 들어갑니다. 내용이 들어갑니다. 내용이 들어갑니다. 내용이 들어갑니다.
            </div>
        </div>
        <hr />
        <div class="media">
            <div class="media-left"><img class="media-object" src="https://dummyimage.com/64x64/777777/fff" alt="더미이미지">
            </div>
            <div class="media-body">
                <h4 class="media-heading">간단한 제목이 들어갈 곳입니다.</h4>
                내용이 들어갑니다. 내용이 들어갑니다. 내용이 들어갑니다. 내용이 들어갑니다. 내용이 들어갑니다.
            </div>
        </div>
        <hr />
        <div class="media">
            <div class="media-left"><img class="media-object" src="https://dummyimage.com/64x64/777777/fff" alt="더미이미지">
            </div>
            <div class="media-body">
                <h4 class="media-heading">간단한 제목이 들어갈 곳입니다.</h4>
                내용이 들어갑니다. 내용이 들어갑니다. 내용이 들어갑니다. 내용이 들어갑니다. 내용이 들어갑니다.
            </div>
        </div>

    </div>

    <!-- js include -->
    <jsp:include page="../includes/include_js.jsp" flush="false" />
</body>

</html>