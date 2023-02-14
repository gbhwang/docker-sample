# 베이스 이미지 명시
FROM python:3.7.8

# 컨테이너 실행 전 수행할 쉘 명령어
WORKDIR /app
COPY . .

RUN python -m pip install pip --upgrade
RUN pip install -r ./requirements.txt

# 컨테이너 밖으로 노출할 포트
EXPOSE 8501

# 컨테이너가 시작되었을 때 실행할 쉘 명렁어
# 도커파일 내 1회만 실행할 수 있음
CMD streamlit run src/main.py