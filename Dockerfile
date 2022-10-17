#FROM python:3.8-slim-bullseye
#WORKDIR /yt_down_bot
#LABEL app=bot
#COPY . .
#RUN pip install -r requirements.txt
#
#CMD ["python3", "bot.py"]

FROM python:3.8-slim-bullseye
WORKDIR /worker_dir
LABEL app=worker
COPY . .
RUN pip install -r requirements.txt

CMD ["python3", "worker.py"]