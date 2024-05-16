#! /bin/bash

echo "building image from docker-compose-file"
docker-compose build
docker images
echo "running a container"
docker-compose up -d
echo "pushing the image to hub"
docker tag dev_zenapp praveengdocker/dev_region:image${BUILD_NUMBER}
docker login -u praveengdocker -p G@7160598
docker push praveengdocker/dev_region:image${BUILD_NUMBER}
