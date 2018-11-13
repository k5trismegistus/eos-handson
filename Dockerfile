FROM eosio/eos-dev:v1.2.4
ADD ./scripts/ /scripts/
RUN chmod 777 /scripts/setup.sh
ENTRYPOINT ["/scripts/setup.sh"]