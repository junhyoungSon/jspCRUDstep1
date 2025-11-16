<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String title = request.getParameter("title");
    String type = request.getParameter("type");
    String duration = request.getParameter("duration");
    String calories = request.getParameter("calories");
    String content = request.getParameter("content");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>등록 완료</title>
</head>
<body>
<h2>등록 완료</h2>
<p>제목: <%= title %></p>
<p>운동 종류: <%= type %></p>
<p>운동 시간: <%= duration %>분</p>
<p>소모 칼로리: <%= calories %>kcal</p>
<p>내용: <%= content != null && !content.isEmpty() ? content : "없음" %></p>
<br>
<a href="list.jsp">목록으로</a>
</body>
</html>