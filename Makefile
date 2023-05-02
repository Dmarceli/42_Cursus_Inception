all : up

up : 
	@sudo docker compose -f ./srcs/docker-compose.yml up --build

stop : 
	@sudo docker compose -f ./srcs/docker-compose.yml stop

down : 
	@sudo docker compose -f ./srcs/docker-compose.yml down

clean :
	@sudo docker system prune -a 

start : 
	@sudo docker compose -f ./srcs/docker-compose.yml start

status : 
	@sudo docker ps

restart : down  up

fclean : down clean

re : fclean up