FROM python:3.7.7-slim-buster
RUN echo 'Updating Ubuntu packages.'

RUN apt-get update
RUN pip install --upgrade pip

RUN echo 'Installing Python packages.'
COPY requirements.txt /
RUN pip install -r /requirements.txt

RUN echo 'Adding usf_helpers and installing'
COPY packages/usf_helpers-0.1.0.tar.gz /
RUN pip install /usf_helpers-0.1.0.tar.gz

RUN echo 'Adding notebooks and scripts directories and docker-entrypoint.sh.'
ADD notebooks/ /workspace/notebooks
ADD scripts/ /workspace/scripts
ADD docker-entrypoint.sh /workspace/docker-entrypoint.sh
RUN chmod +x /workspace/docker-entrypoint.sh

RUN echo 'Declaring workspace to be the working directory.'
WORKDIR /workspace

RUN echo 'Exposing port 8888.'
EXPOSE 8888

RUN echo 'Setting /workspace/docker-entrypoint.sh as the entrypoint.'
ENTRYPOINT ["/workspace/docker-entrypoint.sh"]
