# http://docs.couchdb.org/en/latest/cluster/setup.html#the-cluster-setup-api
curl -X POST -H "Content-Type: application/json" http://127.0.0.1:15984/_cluster_setup -d '{"action": "enable_cluster", "bind_address":"0.0.0.0", "username": "admin", "password":"admin"}'
curl -X POST -H "Content-Type: application/json" http://127.0.0.1:25984/_cluster_setup -d '{"action": "enable_cluster", "bind_address":"0.0.0.0", "username": "admin", "password":"admin"}'
curl -X POST -H "Content-Type: application/json" http://127.0.0.1:35984/_cluster_setup -d '{"action": "enable_cluster", "bind_address":"0.0.0.0", "username": "admin", "password":"admin"}'

curl -X POST -H "Content-Type: application/json" http://admin:admin@127.0.0.1:15984/_cluster_setup -d '{"action": "enable_cluster", "bind_address":"0.0.0.0", "username": "admin", "password":"admin", "port": 15984, "remote_node": "172.28.0.12", "remote_current_user": "admin", "remote_current_password": "admin" }'
curl -X POST -H "Content-Type: application/json" http://admin:admin@127.0.0.1:15984/_cluster_setup -d '{"action": "add_node", "host":"172.28.0.12", "port": "5984", "username": "admin", "password":"admin"}'
curl -X POST -H "Content-Type: application/json" http://admin:admin@127.0.0.1:15984/_cluster_setup -d '{"action": "add_node", "host":"172.28.0.13", "port": "5984", "username": "admin", "password":"admin"}'

curl -X POST -H "Content-Type: application/json" http://admin:admin@127.0.0.1:15984/_cluster_setup -d '{"action": "finish_cluster"}'

curl -X GET -H "Content-Type: application/json" http://admin:admin@127.0.0.1:15984/_membership
