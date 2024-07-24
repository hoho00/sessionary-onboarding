# backend container 
FROM python:3.11 as backend
WORKDIR /app
RUN pip install poetry

# COPY pyproject.toml poetry.lock ./
COPY . /app/

RUN poetry install --no-root

EXPOSE 8000
ENTRYPOINT [ "poetry", "run", "uvicorn", "app.main:app", "--host", "0.0.0.0" ]
