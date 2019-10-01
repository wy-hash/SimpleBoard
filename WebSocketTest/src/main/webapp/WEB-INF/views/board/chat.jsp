<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
  <head>
    <title>index</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- css include -->
    <jsp:include page="../includes/include_css.jsp" flush="false" />
  </head>
  <body>
  
	<form id="chatForm">
		<input type="hidden" id="sessionid" value="${sessionScope.TestID}">
		<input type="text" id="message"/>
		<button id="sendBtn">send</button>
	</form>
	
	<div id="chatdata">
		<c:forEach items="${list}" var="chat">
		<div class='well'>
			<div class='alert alert-info'>
				<strong>[${chat.name }] -> ${chat.content } </strong>
			</div>
		</div>
		</c:forEach>
	</div>

    <!-- js include -->
    <jsp:include page="../includes/include_js.jsp" flush="false" />
    <script src="/resources/sockjs.js"></script>
	<script src="/resources/chat.js"></script>
  </body>
</html>
