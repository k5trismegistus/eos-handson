eosiocpp -o /mycontracts/hello/hello.wast /mycontracts/hello/hello.cpp
eosiocpp -g /mycontracts/hello/hello.abi /mycontracts/hello/hello.cpp
cleos -u http://nodeos:8888 set contract code /mycontracts/hello