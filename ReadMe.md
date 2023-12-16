

<p>This repo uses docker to setup a grafana dashboard that uses prometheus and postgre-exporter to record metrics on a PostgreSQL Database</p>

Dashboard Used - 
https://grafana.com/grafana/dashboards/9628-postgresql-database/


1. Create Table and Database - make create
2. Start up JDBC Connector - make create-jdbc
3. Insert Data - make insert-data
4. Visit <a href="http://localhost:3000/d/000000039/postgresql-database?orgId=1&refresh=auto&from=now-5m&to=now">http://localhost:3000/d/000000039/postgresql-database?orgId=1&refresh=auto&from=now-5m&to=now</a> to see metrics!
5. Reset Database and Kafka Cluster - make reset

Stop all services - make stop

