FROM centos
RUN yum install sudo -y
RUN sudo yum update -y
RUN sudo yum install git -y
RUN sudo curl –sL https://rpm.nodesource.com/setup_10.x | sudo bash -
RUN sudo yum install nodejs -y
RUN sudo git clone https://github.com/supernova789/foodme.git
WORKDIR "/foodme"
RUN npm install
# RUN sudo chmod +x /foodme/scripts/web-server.sh
EXPOSE 8080
CMD [ "node", "app.js" ]