<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>운동 기록 목록</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">💪 운동 기록 목록</h2>

    <!-- 글쓰기 버튼 -->
    <div class="mb-3 text-end">
        <a href="write.html" class="btn btn-primary">✏️ 새 기록 작성</a>
    </div>

    <!-- 목록 테이블 -->
    <table class="table table-hover">
        <thead class="table-light">
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>운동 종류</th>
            <th>시간</th>
            <th>칼로리</th>
        </tr>
        </thead>
        <tbody>
        <%
            // Mock 데이터 (하드코딩)
            String[][] exercises = {
                    {"1", "11/15 아침러닝", "러닝", "30", "300"},
                    {"2", "11/14 헬스", "헬스", "60", "400"},
                    {"3", "11/12 수영", "수영", "45", "350"}
            };

            for (String[] ex : exercises) {
        %>
        <tr onclick="location.href='view.jsp?id=<%= ex[0] %>'" style="cursor: pointer;">
            <td><%= ex[0] %></td>
            <td><%= ex[1] %></td>
            <td><span class="badge bg-info"><%= ex[2] %></span></td>
            <td><%= ex[3] %>분</td>
            <td><%= ex[4] %>kcal</td>
        </tr>
        <% } %>
        </tbody>
    </table>

    <p class="text-muted text-center mt-4">총 3개의 운동 기록</p>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
