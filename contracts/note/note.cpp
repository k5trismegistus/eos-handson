#include <string>
#include <eosiolib/eosio.hpp>

using namespace eosio;

class Note : public contract {
  public:
      /// constructor
      note(account_name s):contract(s), _notes(s, s)
      {}

  private:
      /// @abi table
      struct note
      {
         uint64_t     key;
         std::string  content;

         uint64_t primary_key() const { return key; }
      };
      typedef eosio::multi_index<N(note), note> notes;

      // local instances of the multi indexes
      notes _notes;
};
