#! /bin/bash
cleos wallet create --file /tmp/wallet_password
cleos wallet open
cat /tmp/wallet_password | xargs cleos -u http://nodeos:8888 wallet unlock --password
# 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3 <-> EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3

# 5Jmsawgsp1tQ3GD6JyGCwy1dcvqKZgX6ugMVMdjirx85iv5VyPR <-> EOS7ijWCBmoXBi3CgtK7DJxentZZeTkeUnaSDvyro9dq7Sd1C3dC4
cleos wallet import --private-key 5Jmsawgsp1tQ3GD6JyGCwy1dcvqKZgX6ugMVMdjirx85iv5VyPR
cleos -u http://nodeos:8888 create account eosio code EOS7ijWCBmoXBi3CgtK7DJxentZZeTkeUnaSDvyro9dq7Sd1C3dC4 EOS7ijWCBmoXBi3CgtK7DJxentZZeTkeUnaSDvyro9dq7Sd1C3dC4

# 5KhxKN8BFG5HewrcJFZvukXbs9KqDZyoKEX2ns1GbF5joNU4UCn <-> EOS5G34ia8t9oVC7g3v5SQv5eh2sBARU5seiph8ETgHPtdEqP1Xyj
cleos wallet import --private-key 5KhxKN8BFG5HewrcJFZvukXbs9KqDZyoKEX2ns1GbF5joNU4UCn
cleos -u http://nodeos:8888 create account eosio user EOS5G34ia8t9oVC7g3v5SQv5eh2sBARU5seiph8ETgHPtdEqP1Xyj EOS5G34ia8t9oVC7g3v5SQv5eh2sBARU5seiph8ETgHPtdEqP1Xyj

exec "$@"