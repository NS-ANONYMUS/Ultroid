FROM programmingerror/ultroid:b0.1
FROM python:3.8-slim-buster

# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# clone the repo and change workdir
RUN git clone https://github.com/NS-ANONYMUS/Ultroid.git
WORKDIR /root/NS-ANONYMUS/

# install addons requirements
COPY . .

CMD ["bash", "resources/startup/startup.sh"]
