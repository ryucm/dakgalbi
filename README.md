# dakgalbi

참고: Repo 이름은 맛있는 음식으로 정했습니다.(다소 주관적).

맛있는 음식, 좋은 카페 등을 추천하고 보여줄 수 있는 서버.

## Uvicorn 사용 이유

Uvicorn과 Gunicorn은 둘 다 Python 웹 애플리케이션을 위한 서버이지만, 몇 가지 중요한 차이점이 있습니다

### 프로토콜 지원:

Uvicorn: ASGI(Asynchronous Server Gateway Interface) 서버입니다.  
Gunicorn: WSGI(Web Server Gateway Interface) 서버입니다.

### 비동기 지원:

Uvicorn: 비동기 프로그래밍에 최적화되어 있습니다  
Gunicorn: 기본적으로 동기식이지만, 비동기 워커를 사용할 수 있습니다

### 성능:

Uvicorn: uvloop와 httptools를 사용하여 높은 동시성과 속도를 제공합니다  
Gunicorn: 다중 프로세스 모델을 사용하여 안정성과 확장성을 제공합니다

### 사용 사례:

Uvicorn: FastAPI와 같은 비동기 프레임워크에 주로 사용됩니다  
Gunicorn: Django, Flask 등 전통적인 WSGI 프레임워크에 주로 사용됩니다

### 프로세스 관리:

Uvicorn: 기본적으로 단일 프로세스 서버이지만, 다중 워커 설정도 가능합니다  
Gunicorn: 다중 워커 프로세스 관리에 특화되어 있습니다

### 개발 vs 프로덕션:

Uvicorn: 개발 환경에서 자주 사용되며, 코드 변경 시 자동 리로드 기능을 제공합니다  
Gunicorn: 주로 프로덕션 환경에서 사용되며, 다중 워커로 높은 트래픽 처리에 적합합니다

종합하면, Uvicorn은 비동기 애플리케이션에 최적화된 고성능 ASGI 서버이며, Gunicorn은 안정성과 확장성이 뛰어난 WSGI 서버입니다.

# 프로젝트 구조

📦dakgalbi
┣ 📂alembic
┣ 📂app
┃ ┣ 📂api
┃ ┣ 📂core
┃ ┣ 📂crud
┃ ┃ ┗ 📜user.py
┃ ┣ 📂db
┃ ┣ 📂models
┃ ┃ ┣ 📜place.py
┃ ┃ ┗ 📜user.py
┃ ┣ 📂schema
┃ ┗ 📜main.py
┣ 📜.dockerignore
┣ 📜.gitignore
┣ 📜Dockerfile
┣ 📜README.md
┣ 📜poetry.lock
┗ 📜pyproject.toml
