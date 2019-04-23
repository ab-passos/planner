FROM grpc/cxx:latest

EXPOSE 50051

COPY CMakeLists.txt greeter_async_server2.cc helloworld2.proto ./

WORKDIR /var/local/git/grpc/examples/cpp/helloworld

RUN make

