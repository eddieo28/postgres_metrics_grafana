.PHONY: create create-jdbc insert-data reset stop 
#Create Database, Table (database called pasta, and table called pasta)
create:
	docker-compose up -d --build
	

#Create JDBC Source Connector and the topic for it. (topic = jdbc.pasta)
create-jdbc:
	curl -X POST -H "Content-Type: application/json" --data @./jdbc/config.json http://localhost:8083/connectors


#Reset the SQL Table, and kafka cluster
reset:
	rm -rf pgdata
	docker-compose down
	docker-compose up -d --build

#Stop all services
stop:
	docker compose down

#Insert 50 Records into Pasta Table
insert-data:
	docker-compose exec db psql -U postgres -d pasta -c "INSERT INTO pasta (name) SELECT 'Spaghetti' || generate_series(1,50);"
