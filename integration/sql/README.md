# HTTP-SQL Users Integration

## Run the Camel route

```sh
camel run http-sql-users.camel.yaml application.properties --dep=org.xerial:sqlite-jdbc:3.49.1.0 --dev
```

## Usage

### Create user

```sh
curl -X POST http://0.0.0.0:8080/users -H "Content-Type: application/json" -d '{"name":"Ivo"}'
```

### Get user

```sh
curl http://0.0.0.0:8080/users/Ivo
```