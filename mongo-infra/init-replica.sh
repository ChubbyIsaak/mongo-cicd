#!/bin/bash
echo "Inicializando Replica Set..."
docker exec -it mongo1 mongosh --eval "
rs.initiate({
  _id: 'rs0',
  members: [
    { _id: 0, host: 'mongo1:27000' },
    { _id: 1, host: 'mongo2:27001' },
    { _id: 2, host: 'mongo3:27002' }
  ]
})"
