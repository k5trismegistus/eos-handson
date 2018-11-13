#include <string>
#include <eosiolib/eosio.hpp>

using namespace std;
using namespace eosio;

class Note : public contract {
  public:
      // constructor
      Note(account_name s):contract(s), _notes(s, s)
      {}

      // @abi action
      void createnote(string content)
      {
        // update the table to include a new note
        _notes.emplace(
            get_self(), 
            [&](auto& n)
            {
                n.key = _notes.available_primary_key();
                n.content = content;
            });
      };

      // @abi action
      void readnote(uint64_t index)
      {
          auto note = _notes.find(index);
          if (note != _notes.end()) {
            print(note->content);
          }
      };

      // @abi action
      void updatenote(uint64_t index, string content)
      {
          auto note = _notes.find(index);
          if (note != _notes.end()) {
            _notes.modify(note, get_self(), [&](auto& note) {
                note.content = content;
            });
          }
      }

      // @abi action
      void deletenote(uint64_t index)
      {
          auto note = _notes.find(index);
          if (note != _notes.end()) {
            _notes.erase(note);
          }
      };

  private:
      // @abi table
      struct note
      {
         uint64_t     key;
         string  content;

         uint64_t primary_key() const { return key; }
      };
      typedef multi_index<N(note), note> notes;

      // local instances of the multi indexes
      notes _notes;
};

EOSIO_ABI(Note, (createnote)(readnote)(updatenote)(deletenote))