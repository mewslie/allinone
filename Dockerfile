FROM python:3
ENV PYTHONUNBUFFERED=1
RUN mkdir /app
WORKDIR /app
#copy over setup files
COPY init/pythonrequirements.txt ./
# COPY init/wait_for_postgres.sh ./
#update and get packages
RUN apt-get update && apt-get install -y \
    netcat
#install python stuff
RUN pip install --upgrade pip
RUN pip install -U -r pythonrequirements.txt