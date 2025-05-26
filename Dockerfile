# 베이스 이미지 (python 3.9-slim)
FROM python:3.9-slim

# 작업 디렉토리 생성 및 이동
WORKDIR /app

# 로컬의 requirements.txt를 컨테이너로 복사
COPY requirements.txt requirements.txt

# 필요한 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# 로컬의 모든 코드 복사
COPY . .

# Flask 앱 실행 (포트 5000)
CMD ["python", "app.py"]

