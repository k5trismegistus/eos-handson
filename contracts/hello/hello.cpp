#include <eosiolib/eosio.hpp>
#include <eosiolib/print.hpp>

using namespace eosio;

class Hello : public contract {
    public:
    // constructor
    Hello(account_name s):contract(s)
    {}

    //@abi action
    void hello() {
        print("hello world");
    }
};

EOSIO_ABI(Hello, (hello));