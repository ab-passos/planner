FROM grpc/cxx:latest

RUN apt-get update && apt-get install -y \
    build-essential cmake autoconf git pkg-config \
    automake libtool curl make \
    && apt-get clean

EXPOSE 50051

#WORKDIR /var/local/git/grpc/examples/cpp/helloworld

WORKDIR /src

COPY CMakeLists.txt test.cpp ./

RUN cmake . && make
