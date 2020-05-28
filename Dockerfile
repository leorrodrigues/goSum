FROM scratch

COPY sum /app

ENTRYPOINT [ "/sum" ]