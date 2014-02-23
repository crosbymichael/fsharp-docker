FROM crosbymichael/mono
RUN apt-get install -y autoconf libtool pkg-config make git
RUN git clone https://github.com/fsharp/fsharp
RUN cd fsharp && ./autogen.sh --prefix /usr && make && make install
RUN ln -s /usr/lib/cli/FSharp.Core-4.3/FSharp.Core.dll /usr/lib/mono/4.0 && \
    ln -s /usr/lib/cli/FSharp.Compiler.Interactive.Settings-4.3/FSharp.Compiler.Interactive.Settings.dll /usr/lib/mono/4.0 && \
    ln -s /usr/lib/cli/FSharp.Core-4.3/FSharp.Core.sigdata /usr/lib/mono/4.0 && \
    ln -s /usr/lib/cli/FSharp.Core-4.3/FSharp.Core.optdata /usr/lib/mono/4.0
