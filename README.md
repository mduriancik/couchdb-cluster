# couchdb-cluster

An example of a dockerised CouchDB cluster.

3 CouchDB nodes with HA-Proxy load balancer.

## Starting a cluster

   docker-compose up -d

**admin consoles:**

   http://localhost:15984/_utils

   http://localhost:25984/_utils
   
   http://localhost:35984/_utils

**data filesystem mappings:**

    ./data/node1
    ./data/node2
    ./data/node3
