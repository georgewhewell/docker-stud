from ubuntu

RUN apt-get update
RUN apt-get install stud -y

ADD stud.pem stud.pem

RUN stud \
    -c 'ECDHE-RSA-RC4-SHA:RC4:HIGH:!MD5:!aNULL:!EDH' \
    -f 127.0.0.1,8888 \
    -b 127.0.0.1,8081 \
    stud.pem 

EXPOSE 8888
