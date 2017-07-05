FROM rabbitmq:3.6.10-alpine
RUN rabbitmq-plugins enable rabbitmq_mqtt
CMD ["rabbitmq-server"]