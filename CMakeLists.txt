cmake_minimum_required(VERSION 3.7)
project(helloworld_project)

set(CMAKE_CXX_STANDARD 11)

set(_PROTOBUF_LIBPROTOBUF protobuf)
set(_GRPC grpc)
set(_GRPC_GRPCPP_UNSECURE grpc++_unsecure)

add_executable(server test.cpp)

target_link_libraries(server
    ${_GRPC}
    ${_GRPC_GRPCPP_UNSECURE}
    ${_PROTOBUF_LIBPROTOBUF})
