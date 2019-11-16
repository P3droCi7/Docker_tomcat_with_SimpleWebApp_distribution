##Steps to follow
<ol>
<li>Clone Github project repository</li>
<li>Open CMD</li>
<li>Change directory to root dir - Docker_tomcat_with_SimpleWebApp_distribution</li>
<li>Build docker image with help of Dockerfile (more details inside Dockerfile) - root dir, run command:</li>

	docker build -t image_name .
<li>Build Docker conatiner, run command:</li>

	docker run -d -p 8080:8080 --name container_name image_name
</ol>

##You are able to reach:
- Tomcat Manager @localhost:8080

        Login:admin
        Password:admin
- SimpleWebApp   @localhost:8080/SimpleWebApp

##Helpful Applications
<ol>
<li>Docker Kitematic (v0.17.0 - doesnt have bug with showing no container log)</li>
<li>Intellij Docker plugin</li>
</ol>

##Other different helpful Docker-Compose commands (the same applies to Docker)
<ul>
<li>Start of previously prepared .YML configuration file (Important! to start the file beeing in proper localization CMD - where the file resides)</li>

    docker-compose up -d
<li>Stop all containers</li>

    docker-compose stop
<li>Remove the application containers</li>

    docker-compose rm -f
<li>List all images</li>

    docker images
<li>List running containers</li>

    docker ps
</ul>

##Compilation Fixes:
Docker Firewall Fix - drives are not shared - set docker network type to private
Powershell command - run as system administrator:

	Set-NetConnectionProfile -interfacealias "vEthernet (DockerNAT)" -NetworkCategory Private
