##How it works?

	1.Clone Github project repository
	2.Open CMD
	3.Change directory to root dir - <b>Docker_tomcat_with_SimpleWebApp_distribution</b>
		#cd root \app dir
	4.Build docker image with help of Dockerfile (root dir), run command:
		#docker build -t image_name .
	5.Build Docker conatiner, run command:
		#docker run -d -p 8080:8080 --name container_name image_name

##You are able to reach:
	- Tomcat Manager @ localhost:8080
		Login:admin 
		Password:admin
	
	- SimpleWebApp   @	localhost:8080/SimpleWebApp

##Helpful Applications
	1. Docker Kitematic (v0.17.0 - doesnt have bug with showing no container log)
	2. Intellij Docker plugin

##Other different helpful Docker commands

	1.Start of previously prepared .YML configuration file (important! to start the file beeing in proper localization CMD - where the file resides)
		#docker-compose up -d 
	2.Stop all containers
		#docker-compose stop
	3.Remove the application container
		#docker-compose rm -f
	4.List all images
		#docker images
	5.List running containers
		#docker ps

##Compilation Fixes:
Docker Firewall Fix - drives are not shared - set docker network type to private
Powershell command - run as system administrator
	#Set-NetConnectionProfile -interfacealias "vEthernet (DockerNAT)" -NetworkCategory Private