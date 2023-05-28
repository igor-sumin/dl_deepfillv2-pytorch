FROM ubuntu:22.04
FROM python:3.6

RUN apt-get update \
    && apt-get install ffmpeg libsm6 libxext6  -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /dl_deepfillv2-pytorch

ADD . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]