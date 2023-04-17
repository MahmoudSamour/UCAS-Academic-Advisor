# UCAS-Academic-Advisor
UCAS-Academic-Advisor

docker build -t myrasa .

docker run -it --rm -p 5005:5005 --name myrasa myrasa

curl -X POST "http://localhost:5005/webhooks/rest/webhook" -H "Content-Type: application/json" -d '{"message":"مرحبا"}'

docker ps

docker stop <container-id>

docker rm <container-id>