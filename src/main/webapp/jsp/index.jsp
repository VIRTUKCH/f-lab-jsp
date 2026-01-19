<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>JSP 학습 허브</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/common.css" />
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/index.css" />
</head>
<body class="home">
  <%@ include file="/jsp/components/topbar.jsp" %>
  <div class="frame">
    <section class="panel">
      <h1 class="headline">Servlet & JSP 학습 허브</h1>
      <p class="subtitle">
        이 프로젝트는 Servlet과 JSP로 Spring Boot의 핵심 개념을 학습하기 위한 실습 공간입니다.
        최소 구현으로 구조를 체득하고, 점진적으로 기능을 붙입니다.
      </p>
      <div class="tags">
        <span class="tag">Servlet</span>
        <span class="tag">JSP</span>
        <span class="tag">Oracle Free</span>
        <span class="tag">MVC Pattern</span>
      </div>
    </section>
    <section class="panel board">
      <div class="board-item">
        <h3>학습 시나리오</h3>
        <p>회원제 게시판을 기준으로 목록/작성/상세/수정/삭제 흐름을 구현합니다.</p>
        <span class="badge">Step 1: 화면 스캐폴딩</span>
      </div>
      <div class="board-item">
        <h3>다음 단계</h3>
        <p>DB 연결, DAO/DTO 설계, 요청-응답 흐름 정리, 유효성 검사 추가.</p>
        <span class="badge">Step 2: 데이터 연동</span>
      </div>
      <div class="board-item">
        <h3>규칙</h3>
        <p>작업 로그는 AGENTS.md에 남기고, 변경 전 동의를 확인합니다.</p>
        <span class="badge">협업 프로토콜</span>
      </div>
    </section>
  </div>
</body>
</html>
