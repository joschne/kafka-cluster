# What is this step doing?
This step installs  

- kafka 
- kafka connect
- kafka ui
- kafka schema registry
- kafka ksqldb
- postgres source connector

To install run: `bash install.sh`

# What are the files?
The folder kafka-chart is a helm chart containing the layers of the kafka-stack


# Cheetsheet

 
 ```bash
 # Log messages of a topic to console 

 kubectl -n kafka run kafka-consumer -ti --image=quay.io/strimzi/kafka:0.28.0-kafka-3.1.0 --rm=true --restart=Never -- bin/kafka-console-consumer.sh --bootstrap-server my-cluster-kafka-bootstrap:9092 --topic my_server.public.products --from-beginning
 ```

 ```bash
 # connect to ksql with cli
 # kubectl -n kafka run tmp-ksql-cli --rm -i --tty --image confluentinc/cp-ksql-cli:5.3.8 http://kafka-stack-ksqldb-standalone:8088
 kubectl -n kafka run tmp-ksql-cli --rm -i --tty --image confluentinc/ksqldb-cli:0.26.0 ksql http://kafka-stack-ksqldb-standalone:8088

 
 # and a second cli using same container:
 kubectl exec -it tmp-ksql-cli -- ksql http://kafka-stack-ksqldb-standalone:8088
 ```


