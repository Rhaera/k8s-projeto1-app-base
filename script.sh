echo "Creating the images..."

docker build . -t rhaera/backend-project01:1.0 backend/.
docker build . -t rhaera/db-project01:1.0 database/.

echo "Pushing the images..."

docker push rhaera/backend-project01:1.0
docker push rhaera/db-project01:1.0

echo "Creating the services in kubernetes cluster..."

kubectl apply -f services.yml

echo "Creating the deployments"

kubectl apply -f deployment.yml
