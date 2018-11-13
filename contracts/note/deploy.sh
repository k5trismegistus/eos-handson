eosiocpp -o /mycontracts/note/note.wast /mycontracts/note/note.cpp
eosiocpp -g /mycontracts/note/note.abi /mycontracts/note/note.cpp
cleos -u http://nodeos:8888 set contract code /mycontracts/note