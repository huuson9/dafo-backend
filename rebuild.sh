docker stop dafo-backend-app
docker rmi dafo-backend-app:latest

docker build -t dafo-backend-app:latest .