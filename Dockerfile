##
## Python Dockerfile
##

FROM ubuntu:16.04
MAINTAINER Bryan Adams "bmadams0@gmail.com"
EXPOSE 8005

RUN apt-get update && apt-get install -y curl python-pip
RUN pip install requests

## Try to shorten copy, variables and single-line
COPY CMXRequest.sh ./
COPY execute.py ./
COPY sparkMember.py ./
COPY sparkMessage.py ./
COPY sparkRoom.py ./
COPY variables.py ./
COPY appstart.py ./

ENTRYPOINT ["python"]
CMD ["appstart.py"]
