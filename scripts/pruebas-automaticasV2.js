use test
db.createCollection("pruebasAutomaticas")
db.users.createIndex({ email: 1 }, { unique: true })
