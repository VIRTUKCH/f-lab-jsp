<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>글쓰기</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/common.css" />
</head>
<body>
  <%@ include file="/jsp/components/topbar.jsp" %>
  <h1>글쓰기</h1>
  <form action="WriteProcess.jsp" method="post">
    <div>
      <label>제목</label>
      <input type="text" name="title" />
    </div>
    <div>
      <label>내용</label>
      <textarea name="content"></textarea>
    </div>
    <div class="actions">
      <button class="btn" type="submit">저장</button>
      <a class="btn" href="List.jsp">목록</a>
    </div>
  </form>
</body>
</html>
