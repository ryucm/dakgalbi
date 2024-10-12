FROM python:3.11

WORKDIR /app

# Poetry 설치
RUN pip install --no-cache-dir poetry==1.5.1

# 프로젝트 파일 복사
COPY pyproject.toml poetry.lock* /app/

# Poetry 설정 및 의존성 설치
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# 애플리케이션 코드 복사
COPY ./app /app

# 실행 명령
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]