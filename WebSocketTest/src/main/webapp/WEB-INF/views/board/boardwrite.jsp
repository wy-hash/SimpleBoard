<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width" initial-scale="1">
    <title>Boardwrite</title>
    
    <!-- css include -->
    <jsp:include page="../includes/include_css.jsp" flush="false" />
</head>

<body>
<!-- navbar include -->
<jsp:include page="../includes/_navbar.jsp" flush="false" />

    <div class="container-fluid">
        <a href="/board/list" class="btn btn-primary pull-right" style="margin-bottom: 5px;">목록</a>
        <form action="">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th colspan="3" class="text-center" style="background-color: #eeeeee;">

                            <h2>작성</h2>
                        </th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td><input type="text" class="form-control" placeholder="Subject" /></td>
                    </tr>
                    <tr>
                        <td><textarea class="form-control" placeholder="Contents"
                                style="height: 300px; resize: none;"></textarea></td>
                    </tr>
                </tbody>


            </table>
            <div class="form-group">
                <input type="submit" class="btn btn-primary form-control" value="확인"></div>

        </form>

    </div>
    <!-- js include -->
    <jsp:include page="../includes/include_js.jsp" flush="false" />
</body>

</html>