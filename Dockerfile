FROM centos:7

EXPOSE 80

RUN yum install -y libpng libjpeg openssl icu libX11 libXext libXrender xorg-x11-fonts-Type1 xorg-x11-fonts-75dpi wget epel-release

RUN yum install -y npm nodejs

RUN wget https://downloads.wkhtmltopdf.org/0.12/0.12.5/wkhtmltox-0.12.5-1.centos7.x86_64.rpm

RUN rpm -Uvh wkhtmltox-0.12.5-1.centos7.x86_64.rpm

ADD app app

WORKDIR /app

RUN npm install --production

CMD [ "node","app.js" ]