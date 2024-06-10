# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rayderha <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/10 16:34:05 by rayderha          #+#    #+#              #
#    Updated: 2024/06/10 16:37:56 by rayderha         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


# Nom du compilateur
CC = gcc

# Options de compilation
CFLAGS = -Wall -Wextra -Werror

# Cibles à construire
TARGETS = server client

# Règle par défaut
all: $(TARGETS)

# Règle pour construire server
server: server.o
	$(CC) $(CFLAGS) -o server server.o

# Règle pour construire client
client: client.o
	$(CC) $(CFLAGS) -o client client.o

# Règle pour compiler server.c en server.o
server.o: server.c
	$(CC) $(CFLAGS) -c server.c

# Règle pour compiler client.c en client.o
client.o: client.c
	$(CC) $(CFLAGS) -c client.c

# Règle pour nettoyer les fichiers compilés
clean:
	rm -f *.o $(TARGETS)
