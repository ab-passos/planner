cmake_minimum_required(VERSION 3.7)
project(helloworld_project)

# find the protobuf compiler and libraries
find_package(Protobuf REQUIRED)

# check if protobuf was found
if(PROTOBUF_FOUND)
    message ("protobuf found")
else()
    message (FATAL_ERROR "Cannot find Protobuf")
endif()

# Generate the .h and .cxx files
PROTOBUF_GENERATE_CPP(PROTO_SRCS PROTO_HDRS planner.proto)

# Print path to generated files
message ("PROTO_SRCS = ${PROTO_SRCS}")
message ("PROTO_HDRS = ${PROTO_HDRS}")

set(CMAKE_CXX_STANDARD 11)

set(_PROTOBUF_LIBPROTOBUF protobuf)
set(_GRPC grpc)
set(_GRPC_GRPCPP_UNSECURE grpc++_unsecure)

add_executable(server
               test.cpp
               ${PROTO_SRCS}
               ${PROTO_HDRS})

target_link_libraries(server
    ${_GRPC}
    ${_GRPC_GRPCPP_UNSECURE}
    ${_PROTOBUF_LIBPROTOBUF})
