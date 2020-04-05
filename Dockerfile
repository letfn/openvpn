FROM kylemanna/openvpn

RUN apk add expect perl bind-tools

COPY service-* /

COPY service /service

ENTRYPOINT [ "/service" ]

CMD [ ]
