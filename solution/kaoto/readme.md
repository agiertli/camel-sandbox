# Demo Olomouc 05/2025

## Export standalone Camel file to Maven project

> camel export mqtt.camel.yaml --runtime=quarkus --gav=com.vodafone:mqtt-export:1.0-SNAPSHOT --directory=./mqtt-export

## Convert body of /cart and /account into appropriate type

> org.w3c.dom.Document

## When condition for MQTT Broker

> ${header.CamelMqttTopic} == 'audit/account'
> ${header.CamelMqttTopic} == 'audit/cart'
> ${header.CamelMqttTopic} == 'audit/sequence'

## Ship Order REST Get routes

- route:
    id: rest-account
    description: Get account information
    from:
      id: from-3474
      uri: direct
      parameters:
        name: get-account
      steps:
        - to:
            id: to-1664
            uri: rest
            parameters:
              host: "localhost:{{rest.api.port}}"
              method: get
              path: /account
        - convertBodyTo:
            id: convertBodyTo-1914
            type: org.w3c.dom.Document
- route:
    id: rest-sequence
    description: Get order sequence
    from:
      id: from-2229
      uri: direct
      parameters:
        name: get-order-sequence
      steps:
        - to:
            id: to-1475
            uri: rest
            parameters:
              host: "localhost:{{rest.api.port}}"
              method: get
              path: /sequence
        - convertBodyTo:
            id: convertBodyTo-3565
            type: java.lang.String
- route:
    id: rest-cart
    description: Get cart
    from:
      id: from-3546
      uri: direct
      parameters:
        name: get-cart
      steps:
        - to:
            uri: rest
            parameters:
              host: "localhost:{{rest.api.port}}"
              method: get
              path: /cart
        - convertBodyTo:
            id: convertBodyTo-1966
            type: org.w3c.dom.Document
