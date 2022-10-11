# creates or updates a helm release 'kafka-stack' using folder 'kafka-chart'

helm upgrade \
  kafka-stack \
  kafka-chart \
  --atomic --wait \
  --install \
  --debug \
  --timeout 5m0s \
  -n kafka