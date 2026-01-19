<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  String ctx = request.getContextPath();
%>
<div class="topbar">
  <div class="brand">JSP Board</div>
  <nav>
    <a href="<%= ctx %>/jsp/board/List.jsp">목록 보기</a>
    <a href="<%= ctx %>/jsp/login.jsp">로그인</a>
    <a href="<%= ctx %>/jsp/signup.jsp">회원가입</a>
  </nav>
</div>
