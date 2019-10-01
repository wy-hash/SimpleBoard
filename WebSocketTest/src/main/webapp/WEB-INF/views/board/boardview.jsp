<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width" initial-scale="1">
    <title>Boardview</title>
   
    <!-- css include -->
    <jsp:include page="../includes/include_css.jsp" flush="false" />
</head>

<body>
<!-- navbar include -->
<jsp:include page="../includes/_navbar.jsp" flush="false" />

    <div class="container-fluid">
        <a href="boardlist.jsp" class="btn btn-primary pull-right" style="margin-bottom: 5px;">목록</a>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th colspan="3" class="text-center" style="background-color: #eeeeee;">
                        <h2>상세화면</h2>
                    </th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td colspan="1" style="width: 20%;">제목</td>
                    <td>asdasdasd</td>
                </tr>
                <tr>
                    <td colspan="1">작성자</td>
                    <td>asdasdasd</td>

                </tr>
                <tr>
                    <td colspan="1">날짜</td>
                    <td>asdasdasd</td>
                </tr>
                <tr>
                    <td colspan="1">내용</td>
                    <td style="min-height: 300px; text-align: left;">asdasdasdasdasdasdasdasdasdasdasdasd</td>
                </tr>
            </tbody>


        </table>
        <input type="submit" class="btn btn-primary form-control" value="수정">
    </div>

    </div>

    <!-- js include -->
    <jsp:include page="../includes/include_js.jsp" flush="false" />
</body>

</html>