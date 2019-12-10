FROM nginx
MAINTAINER dibyendughosh@gmail.com
RUN apt update -y
RUNB apt install git -y
WORKDIR /opt
RUN git clone https://github.com/microsoft/project-html-website.git
# WORKDIR /opt/project-html-website
RUN mv /opt/project-html-website/* /usr/share/nginx/html/
EXPOSE 80

