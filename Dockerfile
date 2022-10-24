FROM python:3.8-slim-buster

RUN apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y git
RUN pip install flask
RUN pip install Werkzeug
RUN pip install numpy
RUN pip install torch==1.11.0+cu113 torchvision==0.12.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html
RUN pip install tqdm
RUN pip install more-itertools
RUN pip install transformers>=4.19.0
RUN pip install opencv-python-headless
RUN pip install ffmpeg-python
RUN apt install ffmpeg -y
RUN git clone https://github.com/gradient-ai/whisper
WORKDIR whisper/
WORKDIR whisper/
RUN wget https://openaipublic.azureedge.net/main/whisper/models/9ecf779972d90ba49c06d968637d720dd632c55bbf19d441fb42bf17a411e794/small.pt
RUN pip install SpeechRecognition
EXPOSE 5000
CMD python app.py