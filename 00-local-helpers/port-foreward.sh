echo exposing ports on localhost &&
echo 8084: kafka-ui && 
echo 9092: kafka-cluster &&
echo 8083: connect-cluster &&
echo 5008: postgres &&
kubectl port-forward svc/kafka-stack-kafka-ui 8084:80 -n kafka &
kubectl port-forward svc/my-cluster-kafka-bootstrap 9092:9092 -n kafka &
kubectl port-forward svc/my-connect-cluster-connect-api 8083:8083 -n kafka &
kubectl port-forward svc/postgres 5008:5432 -n postgres &
wait
