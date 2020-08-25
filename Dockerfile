FROM centos
RUN sudo yum update -y
RUN sudo yum install git -y
RUN sudo curl –sL https://rpm.nodesource.com/setup_10.x | sudo bash -
RUN sudo yum install nodejs -y
RUN sudo git clone https://github.com/supernova789/foodme.git
RUN sudo chmod +x /home/centos/foodme/scripts/web-server.sh
CMD ["sh","-c","cd /home/centos/foodme/ && npm install && cd /home/centos/foodme/scripts && web-server.sh"]