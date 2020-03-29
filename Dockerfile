FROM kylemanna/openvpn

RUN apk add expect perl

COPY service-* /

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
