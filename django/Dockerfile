FROM python:3
ENV PYTHONUNBUFFERED=1
RUN mkdir /django
WORKDIR /django
#copy over setup files
COPY init/djangorequirements.txt ./
# COPY init/wait_for_postgres.sh ./
#update and get packages
RUN apt-get update && apt-get install -y \
    netcat
#install python stuff
RUN pip install --upgrade pip
RUN pip install -U -r djangorequirements.txt