# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ccamargo <ccamargo@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/18 18:16:05 by ccamargo          #+#    #+#              #
#    Updated: 2024/04/18 18:16:34 by ccamargo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

MARIADB_VOL_DIR = mariadb
WP_VOL_DIR = wp
VOL_BASE_DIR = /home/ccamargo/data
USERNAME = ccamargo


all: directories hosts
	sudo docker volume create --name mdb_data --opt type=none --opt device=$(VOL_BASE_DIR)/$(MARIADB_VOL_DIR) --opt o=bind
	sudo docker volume create --name wp_data --opt type=none --opt device=$(VOL_BASE_DIR)/$(WP_VOL_DIR) --opt o=bind
	cd src && sudo docker-compose up --build -d


first:
	sudo ./src/tools//firstrun.sh

directories:
	@sudo mkdir -p $(VOL_BASE_DIR)
	@sudo chmod -R 777 $(VOL_BASE_DIR)
	@mkdir -p $(VOL_BASE_DIR)/$(MARIADB_VOL_DIR)
	@mkdir -p $(VOL_BASE_DIR)/$(WP_VOL_DIR)

clean: fclean

hosts:
	grep -qE '127.0.0.1[[:space:]]+$(USERNAME).42.fr' /etc/hosts || echo '127.0.0.1 $(USERNAME).42.fr' | sudo tee -a /etc/hosts

fclean:
		cd src && sudo docker-compose down
		sudo docker system prune -af --volumes
		sudo docker volume prune -f
		echo "deleting docker volumes"
		@docker volume rm mdb_data -f
		@docker volume rm wp_data -f
		sudo rm -rf $(VOL_BASE_DIR)