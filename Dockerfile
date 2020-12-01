FROM kylemanna/openvpn

RUN apk add expect perl bind-tools

COPY bin/service-* /

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
