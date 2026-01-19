<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>로그인</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/common.css" />
</head>
<body>
  <%@ include file="/jsp/components/topbar.jsp" %>
  <h1>로그인</h1>
  <form class="form-narrow" action="#" method="post">
    <div>
      <label>아이디</label>
      <input type="text" name="username" />
    </div>
    <div>
      <label>비밀번호</label>
      <input type="password" name="password" />
    </div>
    <div class="actions">
      <button class="btn" type="submit">로그인</button>
      <a class="btn" href="signup.jsp">회원가입</a>
    </div>
  </form>
</body>
</html>
