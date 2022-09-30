FROM paperspace/gradient-base:pt112-tf29-jax0314-py39-20220803

RUN git clone https://github.com/gradient-ai/whisper
RUN pip install flask
RUN pip install ffmpeg
WORKDIR whisper/
WORKDIR whisper/

EXPOSE 5000
