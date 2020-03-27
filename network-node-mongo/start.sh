#!/bin/bash
docker network create minha-rede
docker run -d --name meu-mongo --network minha-rede mongo
docker run --network minha-rede -d -p 8080:3000 douglasq/alura-books:cap05