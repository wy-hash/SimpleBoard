<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width" initial-scale="1">

    <title>Board</title>

    <!-- css include -->
    <jsp:include page="../includes/include_css.jsp" flush="false" />

  </head>
<body>
<!-- navbar include -->
   <jsp:include page="../includes/_navbar.jsp" flush="false" />

<div class="container-fluid">
        <div class="row">
                <div class="col-md-12 text-center"><h1>목록</h1></div>
        </div>
    <table class="table table-bordered">
        <thead>
        <th>No</th>
        <th>제목</th>
        <th>작성자</th>
        <th>날짜</th>
        </thead>
        <tbody>
        <tr>
            <td> 1</td>
            <td><a href="/board/view">제목</a> </td>
            <td>이름</td>
            <td>오늘</td>
        </tr>
        </tbody>
    </table>
    <a href="/board/write" class="btn btn-primary pull-right">작성</a>
</div>

    <!-- js include -->
    
    <jsp:include page="../includes/include_js.jsp" flush="false" />
    
   </body>
</html>