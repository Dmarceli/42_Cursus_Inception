all : up

up : 
	@sudo docker compose -f ./srcs/docker-compose.yml up --build

stop : 
	@sudo docker compose -f ./srcs/docker-compose.yml stop

down : 
	@sudo docker compose -f ./srcs/docker-compose.yml down


start : 
	@sudo docker compose -f ./srcs/docker-compose.yml start

status : 
	@sudo docker ps

restart : down  up

clean :
	@sudo docker system prune -a 

dclean :
	@sudo docker stop $$(sudo docker ps -qa) 
	@sudo docker rm $$(sudo docker ps -qa)
	@sudo docker rmi -f $$(sudo docker images -qa)
	@sudo docker volume rm $$(sudo docker volume ls -q)
	@sudo docker network rm $$(sudo docker network ls -q) 2>/dev/null
	@sudo rm -rf /home/dmarceli/data/mariadb/*
	@sudo rm -rf /home/dmarceli/data/wordpress/*
	clean

fclean : down clean

re : clean up