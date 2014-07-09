FROM crosbymichael/mono

RUN apt-get install -y autoconf libtool pkg-config make git && \
    git clone https://github.com/fsharp/fsharp && \
    cd fsharp && ./autogen.sh --prefix /usr && make && make install && \
    cd / && rm -rf fsharp

CMD ["fsharpi"]
