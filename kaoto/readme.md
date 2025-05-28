# Demo Olomouc 05/2025

## Export standalone Camel file to Maven project

> camel export mqtt.camel.yaml --runtime=quarkus --gav=com.vodafone:mqtt-export:1.0-SNAPSHOT --directory=./mqtt-export

## Convert body of /cart and /account into appropriate type

> org.w3c.dom.Document

## When condition for MQTT Broker

> ${header.CamelMqttTopic} == 'audit/account'
> ${header.CamelMqttTopic} == 'audit/cart'
> ${header.CamelMqttTopic} == 'audit/sequence'
