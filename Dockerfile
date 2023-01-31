FROM centos:7

EXPOSE 8080

RUN yum install -y epel-release && \
    yum install -y npm nodejs && \
    yum clean all

RUN yum install -y https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox-0.12.6-1.centos7.x86_64.rpm

ADD app app

WORKDIR /app

RUN npm install --production

CMD [ "node","app.js" ]
