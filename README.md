# step-no2
# Install docker and Ansible in Your host Michine
# copy the Dockerfile,Json-server.yml,nginx-ssl.yml to Your Host Michine
# run the playbooks json-server.yml,nginx-ssl.yml respectively
# it create the Container with your site
# browse Host_Ip:8080
# nginx best security practices listed in  nginx_security_best_practices
# now create the container with your site and ssl
# run the commnds according your container
   
  #docker commit cid dhoni/json-server:v1
  #docker login
    #user_name
    # password
  #docker push dhoni/json-server:v1
# it push the container to docker hub
# now your container is redy for next step, i,e for Kubernetes deployment

