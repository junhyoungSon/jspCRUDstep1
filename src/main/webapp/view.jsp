<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // URL 파라미터로 받은 ID
    String id = request.getParameter("id");

    // Mock 데이터 (실제로는 DB에서 조회)
    String title = "11/15 아침 러닝";
    String type = "런닝";
    String duration = "30";
    String calories = "300";
    String content = "530페이스, 5km, 강도 중";
    String createdDate = "2025-11-15 07:30";
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>운동 기록 상세보기</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <!-- 헤더 -->
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>📋 운동 기록 상세보기</h2>
        <a href="list.jsp" class="btn btn-outline-secondary">목록으로</a>
    </div>

    <!-- 상세 내용 -->
    <div class="card">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0"><%= title %></h4>
        </div>
        <div class="card-body">
            <table class="table table-borderless">
                <tr>
                    <th style="width: 150px;">번호</th>
                    <td><%= id %></td>
                </tr>
                <tr>
                    <th>운동 종류</th>
                    <td>
                        <span class="badge bg-info fs-6"><%= type %></span>
                    </td>
                </tr>
                <tr>
                    <th>운동 시간</th>
                    <td><strong><%= duration %>분</strong></td>
                </tr>
                <tr>
                    <th>소모 칼로리</th>
                    <td><strong><%= calories %>kcal</strong></td>
                </tr>
                <tr>
                    <th>작성일</th>
                    <td><%= createdDate %></td>
                </tr>
            </table>

            <hr>

            <div class="mt-3">
                <h5>📝 내용</h5>
                <div class="border rounded p-3 bg-light">
                    <%= content != null && !content.isEmpty() ? content : "내용이 없습니다." %>
                </div>
            </div>
        </div>
        <div class="card-footer text-end">
            <a href="edit.html?id=<%= id %>" class="btn btn-warning">✏️ 수정</a>
            <a href="delete_ok.jsp?id=<%= id %>" class="btn btn-danger"
               onclick="return confirm('정말 삭제하시겠습니까?')">🗑️ 삭제</a>
        </div>
    </div>

    <!-- 통계 카드 -->
    <div class="row mt-4">
        <div class="col-md-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">⏱️ 운동 시간</h5>
                    <p class="card-text display-4"><%= duration %><small>분</small></p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">🔥 소모 칼로리</h5>
                    <p class="card-text display-4"><%= calories %><small>kcal</small></p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>