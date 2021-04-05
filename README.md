# DeltaQproduct

Pre-requisite
  1. Docker should be installed in the local machine
  2. If installing in aws/azure/GCP, inbound and outbound traffic should be open for 4200 and 5001 ports.

Clone the directory to your local machine

git clone https://github.com/nakulchandra92/DeltaQproduct

Run the shell script for replacing the 'localhost' in the angular source code to the local machine ip address

./script.sh

change the directory to frontend

cd frontend

Build the docker image for angular front end

docker build -t frontend .

Once the image is built, run the docker

docker run -d -p 4200:4200 frontend:latest

change the directory to backend

cd ../backend

Build the docker image for flask backend

docker build -t backend .

Once the image is built, run the docker

docker run -d -p 5001:5001 backend:latest

Open the UI in browser : http://<IP-ADDRESS>:4200
  


