FROM crosbymichael/mono

RUN apt-get install -y autoconf libtool pkg-config make git
RUN git clone https://github.com/fsharp/fsharp
RUN cd fsharp && ./autogen.sh --prefix /usr && make && make install

