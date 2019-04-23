FROM grpc/cxx:latest

EXPOSE 50051

WORKDIR /var/local/git/grpc/examples/cpp/helloworld

RUN make

