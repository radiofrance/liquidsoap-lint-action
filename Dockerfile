FROM savonet/liquidsoap:v2.2.4

ADD  main.sh /main.sh

ENTRYPOINT [ "/main.sh" ]