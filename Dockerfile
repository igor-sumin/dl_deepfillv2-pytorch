FROM ubuntu:22.04
FROM python:3.6

RUN apt-get update \
    && apt-get install -y git wget \
    && rm -rf /var/lib/apt/lists/*

ADD . .

RUN git clone https://github.com/igor-sumin/dl_deepfillv2-pytorch.git

WORKDIR /dl_deepfillv2-pytorch
COPY . dl_deepfillv2-pytorch/

RUN pip install -r dl_deepfillv2-pytorch/requirements.txt

COPY entrypoint.sh .
COPY test.py .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]