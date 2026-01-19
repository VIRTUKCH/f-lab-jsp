# AGENTS 안내

## 기본 규칙
1. 한국어로 답변한다.
2. 사용자 동의 없이 임의로 명령을 실행하지 않는다.
3. 매 작업 완료 시 수행한 내용을 이 파일에 기록한다.
4. 본 프로젝트는 Servlet & JSP를 통해 Spring Boot를 학습하기 위한 수단이다.

## 작업 로그
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
