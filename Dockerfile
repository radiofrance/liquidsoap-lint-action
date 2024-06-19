ARG LIQUIDSOAP_VERSION=v2.2.4
FROM savonet/liquidsoap:${LIQUIDSOAP_VERSION}

ADD  main.sh /main.sh

ENTRYPOINT [ "/main.sh" ]