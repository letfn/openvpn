FROM kylemanna/openvpn:2.4

RUN apk add expect perl bind-tools

COPY bin/service-* /

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
