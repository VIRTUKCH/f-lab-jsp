# AGENTS 안내

## 기본 규칙
1. 한국어로 답변한다.
2. 사용자 동의 없이 서버 실행/기동 관련 명령을 실행하지 않는다.
3. 매 작업 완료 시 수행한 내용을 이 파일에 기록한다.
4. 본 프로젝트는 Servlet & JSP를 통해 Spring Boot를 학습하기 위한 수단이다.

## 작업 로그
- 작업 로그는 `[YYYY-MM-DD HH:MM] 내용` 형식으로 기록한다.
- db/Dockerfile 생성: Oracle Free 이미지 기반, /data 디렉터리와 볼륨 설정 추가.
- .gitignore 업데이트: /data 디렉터리 제외 추가.
- run_oracle_db.sh 생성: 기존 컨테이너/이미지 정리 후 이미지 빌드, 컨테이너 실행 및 로그 팔로우.
- run_oracle_db.sh 이동 및 수정: db 디렉터리로 이동, 사용자/비밀번호 VIRTUKCH 통일, 데이터 경로 ../data로 조정.
- run_oracle_db.sh 수정: docker 절대 경로(/Applications/Docker.app/Contents/Resources/bin/docker) 사용.
- run_oracle_db.sh 수정: 빌드 컨텍스트를 현재 디렉터리로 변경, 데이터 경로를 ./data로 수정.
- run_oracle_db.sh 수정: Docker Desktop 바이너리 경로를 PATH에 추가해 credential helper 인식.
- db/Dockerfile 수정: root로 /data 생성 후 oracle 사용자로 복귀.
- Oracle 컨테이너 실행 성공 확인: 초기화 완료 및 DATABASE IS READY TO USE 로그 확인.
- run_oracle_db.sh 수정: build/run에 --platform=linux/amd64 추가.
- JSP 뼈대 생성: src/main/webapp/board에 List/Write/WriteProcess/View/Edit/EditProcess/DeleteProcess 추가.
- index.jsp 개선: 학습 허브 랜딩 UI, 보드 링크, 배경/타이포그래피 스타일 추가.
- AGENTS 규칙 수정: 서버 실행/기동 명령에 대한 사전 동의 규칙으로 명확화.
- index.jsp 수정: 애니메이션/호버 제거, 링크 대신 정적 버튼 텍스트로 변경.
- index.jsp 수정: 버튼 영역 제거.
- 게시판 JSP 최소 디자인 적용: 목록/상세/작성/수정 화면에 기본 레이아웃과 이동 링크 추가.
- 게시판 상단바 추가: 목록/상세/작성/수정 화면에 고정 네비게이션(목록/로그인/회원가입).
- 상단바 컴포넌트화: /partials/topbar.jspf 추가 및 index/board 화면에 include 적용.
- 상단바 경로 변경: components 디렉터리로 이동하고 include 경로 갱신.
- 모든 JSP에 상단바 적용: WriteProcess/EditProcess/DeleteProcess에 포함 및 상단 패딩 추가.
- [2026-01-19 22:17] AGENTS 규칙 보강: 작업 로그에 시간 기록 형식 추가.
- 상단바 컴포넌트 수정: topbar.jsp로 전환하고 UTF-8 선언 추가, include 경로 갱신.
- [2026-01-19 22:22] 상단바 링크 수정: 컨텍스트 경로를 따라가도록 request.getContextPath() 적용.
- [2026-01-19 22:23] 로그인/회원가입 화면 추가: login.jsp, signup.jsp 생성 및 상단바 포함.
- [2026-01-19 22:29] 디렉터리 재구성 및 CSS 분리: JSP를 /jsp로 이동, CSS를 /css로 분리, web.xml welcome 설정, 공통 스타일/인덱스 스타일 분리.
- [2026-01-19 22:29] index CSS 보완: 홈 화면 전용 폰트 설정 추가.
- [2026-01-19 22:30] web.xml 호환성 조정: Java EE 3.1 네임스페이스로 수정.
- [2026-01-19 22:33] web.xml 되돌림: Jakarta EE 5.0 네임스페이스로 복구.
- [2026-01-20 20:40] BoardDto 생성: board/dto/BoardDto.java 추가.
- [2026-01-20 20:41] BoardDto 수정: visitcount 타입을 String으로 변경.
- [2026-01-20 20:55] BoardDao 생성: board/dao/BoardDao.java 추가.
- [2026-01-20 20:57] JDBConnect 생성 및 BoardDao 연동: common/JDBConnect.java 추가, BoardDao에 ServletContext 생성자 연결.
- [2026-01-20 20:59] web.xml DB 연결 정보 추가 및 BoardDao import 정리.
- [2026-01-20 21:00] Tomcat 9 대응: javax.servlet으로 전환하고 web.xml을 Java EE 3.1로 변경.
- [2026-01-20 21:02] BoardDao에 selectCount() 추가.
- [2026-01-20 21:04] BoardDao에 검색 파라미터 Map을 받는 selectCount(Map) 추가.
- [2026-01-20 21:05] BoardDao 기본 selectCount() 제거.
- [2026-01-20 21:06] BoardDao selectCount를 Statement 기반으로 변경, JDBConnect에 stmt 추가.
- [2026-01-20 21:07] BoardDao selectCount에서 StringBuilder 제거, 문자열 연결로 변경.
- [2026-01-20 21:08] BoardDao에 selectList(Map) 추가.
- [2026-01-20 21:10] 게시판 목록 JSP에 DB 조회 결과 출력 로직 추가.
- [2026-01-20 21:12] 게시판 목록 JSP에 총 게시물 수 출력 추가.
- [2026-01-20 21:28] 게시판 목록 JSP에 검색 폼 추가.
