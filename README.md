# FastAPI로 Todo Backend API 만들기

## 목적

- FastAPI를 이용해 REST API Endpoint를 만드는 방법을 체득합니다.
- PR과 코드리뷰를 통해 협업의 Tone and Manner를 동기화합니다.
- 각자가 팀에 할애할 수 있는 시간을 대략적으로 점검합니다.
- 프로젝트 관리와 작업 문서화를 이 토이 프로젝트로 파일럿 테스트 합니다.

## 개요

1. Todo 앱에 필요한 Backend API를 개발합니다.
2. 토이 프로젝트는 10일 동안 진행합니다.

## Specification

### 주 기능

1. 하나의 Todo는 생성일, 수정일, 내용(50자 미만의 텍스트), 타임스탬프 데이터로 이루어집니다.
2. 사용자는 Todo를 하나씩 생성할 수 있습니다.
3. 사용자는 본인이 생성한 Todo를 불러올 수 있습니다.
4. 사용자는 자신의 Todo를 수정할 수 있습니다.
5. 사용자는 자신의 Todo를 삭제할 수 있습니다.
6. Todo의 CRUD는 사용자 본인만 행할 수 있습니다.

### 로그인

1. JWT기반의 인증 API를 구현합니다.

## 제약사항

1. 한 PR당 최소 1회의 Peer programming을 합니다.
   - 작업을 시작할 때, PR 작업 단위와 함께 Peer programming 일정을 준형과 조율합니다.
2. pytest 라이브러리를 이용해 테스트코드를 작성합니다.
3. PR을 생성하면 Self code review를 먼저 진행합니다.
4. code review를 요청받으면 익일 자정 전까지 반드시 리뷰를 진행합니다.
5. fastAPI server와 PostgreSQL docker container위에서 실행되도록 개발환경을 설정합니다.

## PR 구분

- 하나의 Pull Request 에 포함될 작업에 대한 가이드라인입니다.
- 개인 취향에 맞게 PR 범위를 조정해도 됩니다.

1. 개발환경을 설정합니다.
   - server, rdbms 개발 컨테이너를 실행시킬 환경을 구성하고, DB migration 환경을 설정합니다.
   - SQLAlchemy, Alembic
2. JWT Authentication과 Authorization을 구현합니다.
3. Todo의 Create, Read 기능을 구현합니다.
4. Todo의 Update, Delete 기능을 구현합니다.
