<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>게시판 목록</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/common.css" />
</head>
<body>
  <%@ include file="/jsp/components/topbar.jsp" %>
  <header>
    <h1>게시판 목록</h1>
    <a class="btn" href="Write.jsp">글쓰기</a>
  </header>
  <table>
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td><a href="View.jsp">샘플 게시글</a></td>
        <td>VIRTUKCH</td>
        <td>2026-01-19</td>
      </tr>
      <tr>
        <td>2</td>
        <td><a href="View.jsp">두 번째 게시글</a></td>
        <td>VIRTUKCH</td>
        <td>2026-01-19</td>
      </tr>
    </tbody>
  </table>
</body>
</html>
