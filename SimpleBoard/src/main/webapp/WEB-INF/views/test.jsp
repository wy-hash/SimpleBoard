<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
   <title>i2sec jsp 게시판</title>
   <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
   <div class="container" align='center'>
      <h1>게시글 작성</h1>
      <form name="bbs_write" method="post" action="write_chk.jsp" onsubmit="" enctype="multipart/form-data">

         <table align="center">
            <tr>
               <td>작성자</td>
               <td>테스트 글쓴이</td>
               <input type='hidden' name='bbs_writer' value="">
            </tr>
            <tr>
               <td>제 목</td>
               <!--<td><input type='text' name='bbs_title' size='20' maxlength='40'></td>-->
               <td><textarea name='bbs_title' rows="1" cols="120" maxlength='40'></textarea></td>
            <tr>
               <td>파 일</td>
               <td><input type="file" name="_file"></td>
            </tr>
            </tr>
            <tr>
               <td>내 용</td>
               <td><textarea name='bbs_content' rows="20" cols="120"></textarea></td>
            </tr>
            <tr>
               <td>비밀번호</td>
               <td><input type='password' name='bbs_pass' maxlength="4" size="4"> (4글자)</td>
            </tr>
            <tr>
               <td colspan="2">
                  <div align="center">
                     <!--<p><a href="#">등록</a> &nbsp&nbsp <a href="/">취소</a></p>-->
                     <input class="btn btn-primary" type="submit" value="등록">&nbsp;&nbsp;
                     <input class="btn btn-primary" type="button" value="뒤로" onclick="location.href='main.jsp'">
                  </div>
                  </div>
               </td>
            </tr>
         </table>
      </form>
   </div>
</body>
</html>