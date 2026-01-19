<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>회원가입</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/common.css" />
</head>
<body>
  <%@ include file="/jsp/components/topbar.jsp" %>
  <h1>회원가입</h1>
  <form class="form-medium" action="#" method="post">
    <div>
      <label>아이디</label>
      <input type="text" name="username" />
    </div>
    <div>
      <label>이메일</label>
      <input type="email" name="email" />
    </div>
    <div>
      <label>비밀번호</label>
      <input type="password" name="password" />
    </div>
    <div>
      <label>비밀번호 확인</label>
      <input type="password" name="passwordConfirm" />
    </div>
    <div class="actions">
      <button class="btn" type="submit">가입</button>
      <a class="btn" href="login.jsp">로그인</a>
    </div>
  </form>
</body>
</html>
