NAME		= libplante.a

CC			= gcc
AR			= ar -rc
RM			= rm -f

LIB2_NAME	= libfruit.a
LIB2_PATH	= fruit/

SRC			= courge.c carotte.c
OBJ			= ${SRC:.c=.o}

LIBPATH		= ./
# --------------------------------

all: ${NAME} 

${NAME}: ${OBJ} suball
	cp ${LIB2_PATH}${LIB2_NAME} ${LIBPATH}
	mv ${LIB2_NAME} ${NAME}
	${AR} ${NAME} ${OBJ}
	ranlib ${NAME}

${LIB2_PATH}${LIB2_NAME}: suball

clean: subclean
	${RM} ${OBJ}

fclean: clean subfclean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re

# --------------------------------
suball:
	${MAKE} all -C ${LIB2_PATH}

subclean: 
	${MAKE} clean -C ${LIB2_PATH}

subfclean: 
	${MAKE} fclean -C ${LIB2_PATH}

subre: re
	${MAKE} re -C ${LIB2_PATH}
