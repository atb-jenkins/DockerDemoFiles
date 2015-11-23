cd /home/dockeruser/;
docker build -t atb/tomcat7 .
sudo docker run --user dockeruser -p 8081:8080 -d atb/tomcat7 



