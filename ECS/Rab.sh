!#/bin/bash

#Update the Packahe First
sudo apt-get update

#Install the Nessary Packages for Docker Installation
sudo apt-get install -y ca-certificates curl gnupg lsb-release

#Add Docker’s official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

#set up the repository for Docker Engine Installation.
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Update the Package
sudo apt-get update -y

#Install the latest version of Docker Engine, containerd, and Docker Compose
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

#Start and enable docker service
systemctl start docker
systemctl enable docker
systemctl status docker
docker info

#Verify that Docker Engine is installed correctly by running the hello-world image.
sudo docker run hello-world