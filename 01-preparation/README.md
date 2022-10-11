# What is this step doing?
This step installs the strimzi-cluster-operator. The operator can then be used to install kafka and other related resources.

To install run: `bash install.sh`


# What are the files?
The file 'strimzi-cluster-operator-0.28.0.yaml' was downloaded from https://strimzi.io/install/latest?namespace=kafka

Note the '?namespace=kafka'. This sets the namespace of all the resources to kafka in the file.