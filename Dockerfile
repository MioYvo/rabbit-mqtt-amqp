FROM rabbitmq:3.6.12-management-alpine
COPY rabbitmqadmin /usr/local/bin/
RUN rabbitmq-plugins enable rabbitmq_mqtt && \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
    apk add --no-cache python && \
    chmod +x /usr/local/bin/rabbitmqadmin
CMD ["rabbitmq-server"]