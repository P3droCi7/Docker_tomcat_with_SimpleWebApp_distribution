How it works?

#Download project 
#Open CMD

#Change directory to root app files
cd root \app dir

#Build docker image with help of Dockerfile (root dir)
#Run command:
docker build -t image_name .

#Build Docker conatiner
#Run command:
docker run -d -p 8080:8080 --name container_name image_name





#Other different helpful Docker commands

#Start of previously prepared .YML configuration file (important! to start the file beeing in proper localization CMD - where the file resides)
docker-compose up -d 

#Stop all containers
docker-compose stop

#Remove the application containers
docker-compose rm -f



#List all images
docker images

#List running containers
docker ps

#Docker Firewall Fix - when drives are not shared - set docker network type to private
#Powershell command - run as system administrator
Set-NetConnectionProfile -interfacealias "vEthernet (DockerNAT)" -NetworkCategory Private