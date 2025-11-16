<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
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
    <title>수정 완료</title>
</head>
<body>
<h2>수정 완료</h2>
<p>번호: <%= id %></p>
<p>제목: <%= title %></p>
<p>운동 종류: <%= type %></p>
<p>운동 시간: <%= duration %>분</p>
<p>소모 칼로리: <%= calories %>kcal</p>
<p>내용: <%= content != null && !content.isEmpty() ? content : "없음" %></p>
<br>
<a href="view.jsp?id=<%= id %>">상세보기</a>
<a href="list.jsp">목록으로</a>
</body>
</html>