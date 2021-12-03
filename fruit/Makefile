NAME	= libfruit.a

CC		= gcc
AR		= ar -rc
RM		= rm -f

SRC		= pomme.c poire.c
OBJ		= ${SRC:.c=.o}

# -----------------------------------------
all: $(NAME)

${NAME}: ${OBJ}
	${AR} ${NAME} ${OBJ}
	ranlib ${NAME}

clean:
	${RM} ${OBJ}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re