SRCS =	megaphone.cpp

OBJS =	{SRCS:.c=.o}

NAME =	megaphone

CC =	clang++

FLAGS =	-Wall -Werror -Wextra

RM =	rm -rf

.c.o 	:
			${CC} -c $< -o ${<:.c=.o} ${FLAGS} -g

${NAME} :	${OBJS}
			${CC} ${FLAGS} ${OBJS}

all :		${NAME}

clean :
			${RM} ${OBJS}

fclean :	clean
			${RM} ${NAME}

re :		fclean all

.PHONY :	${NAME} all clean fclean re