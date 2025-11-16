<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>삭제 완료</title>
</head>
<body>
<h2>삭제 완료</h2>
<p>번호 <%= id %>번 운동 기록이 삭제되었습니다.</p>
<br>
<a href="list.jsp">목록으로</a>
</body>
</html>