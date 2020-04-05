FROM kylemanna/openvpn

RUN apk add expect perl bind-utils

COPY service-* /

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
