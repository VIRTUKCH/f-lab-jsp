<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="board.dao.BoardDao" %>
<%@ page import="board.dto.BoardDto" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%
  String searchField = request.getParameter("searchField");
  String searchWord = request.getParameter("searchWord");
  String safeSearchField = searchField == null ? "" : searchField;
  String safeSearchWord = searchWord == null ? "" : searchWord;
  Map<String, Object> param = new HashMap<>();
  if (searchField != null) {
    param.put("searchField", searchField);
  }
  if (searchWord != null) {
    param.put("searchWord", searchWord);
  }

  BoardDao dao = new BoardDao(application);
  int totalCount = dao.selectCount(param);
  List<BoardDto> boardList = dao.selectList(param);
  dao.close();
%>
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
    <p>총 게시물 수: <%= totalCount %></p>
    <a class="btn" href="Write.jsp">글쓰기</a>
  </header>
  <form method="get" action="List.jsp">
    <label for="searchField">검색</label>
    <select id="searchField" name="searchField">
      <option value="title" <%= "title".equals(safeSearchField) ? "selected" : "" %>>제목</option>
      <option value="content" <%= "content".equals(safeSearchField) ? "selected" : "" %>>내용</option>
      <option value="id" <%= "id".equals(safeSearchField) ? "selected" : "" %>>작성자</option>
    </select>
    <input type="text" name="searchWord" value="<%= safeSearchWord %>" placeholder="검색어를 입력하세요" />
    <button type="submit" class="btn">검색</button>
  </form>
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
      <%
        if (boardList == null || boardList.isEmpty()) {
      %>
      <tr>
        <td colspan="4">등록된 게시물이 없습니다.</td>
      </tr>
      <%
        } else {
          for (BoardDto dto : boardList) {
      %>
      <tr>
        <td><%= dto.getNum() %></td>
        <td><a href="View.jsp?num=<%= dto.getNum() %>"><%= dto.getTitle() %></a></td>
        <td><%= dto.getId() %></td>
        <td><%= dto.getPostdate() %></td>
      </tr>
      <%
          }
        }
      %>
    </tbody>
  </table>
</body>
</html>
