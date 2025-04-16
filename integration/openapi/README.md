# Contract-first OpenAPI Integration

When Camel startup the OpenAPI specification file is loaded and parsed. For every API Camel builds HTTP REST endpoint, which are routed 1:1 to Camel routes using the `direct:operationId` naming convention.

## Run the Camel route

```sh
camel run api/petstore-v3.json openapi-petstore.camel.yaml --dev
```

## Usage

### Get pet with id 123

```sh
curl -i http://localhost:8080/api/v3/pet/123
```

### Add pet

```sh
curl -X POST "http://localhost:8080/api/v3/pet" \
  -H "Content-Type: application/json" \
  -d '{
    "id": 12345,
    "name": "Fluffy",
    "photoUrls": ["http://example.com/photo.jpg"],
    "category": { "id": 1, "name": "Cats" },
    "tags": [{ "id": 1, "name": "cute" }],
    "status": "available"
  }'
```
