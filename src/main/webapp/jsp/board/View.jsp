<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>게시글 보기</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/common.css" />
</head>
<body>
  <%@ include file="/jsp/components/topbar.jsp" %>
  <h1>게시글 보기</h1>
  <div class="meta">작성자: VIRTUKCH | 작성일: 2026-01-19</div>
  <div class="content">
    여기에 게시글 내용이 표시됩니다. 최소 디자인으로 구성된 상세 화면입니다.
  </div>
  <div class="actions">
    <a class="btn" href="Edit.jsp">수정</a>
    <a class="btn" href="DeleteProcess.jsp">삭제</a>
    <a class="btn" href="List.jsp">목록</a>
  </div>
</body>
</html>
