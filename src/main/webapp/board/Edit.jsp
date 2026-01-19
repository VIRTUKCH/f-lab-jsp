<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>게시글 수정</title>
</head>
<body>
  <h1>게시글 수정</h1>
  <form action="EditProcess.jsp" method="post">
    <div>
      <label>제목</label>
      <input type="text" name="title" />
    </div>
    <div>
      <label>내용</label>
      <textarea name="content"></textarea>
    </div>
    <button type="submit">수정</button>
  </form>
</body>
</html>
