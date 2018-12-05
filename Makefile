# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: romendy <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/17 01:06:39 by romendy           #+#    #+#              #
#    Updated: 2018/12/02 21:06:10 by romendy          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Wextra -Werror

SRCS = ft_strlen.c ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c \
	   ft_isascii.c ft_isdigit.c ft_isprint.c ft_memalloc.c ft_memccpy.c \
	   ft_memcmp.c ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c \
	   ft_putchar.c ft_putchar_fd.c ft_putendl.c ft_putstr.c ft_putstr_fd.c \
	   ft_strcat.c ft_strchr.c ft_strclr.c ft_strcmp.c ft_strcpy.c \
	   ft_strdup.c ft_strequ.c ft_striter.c ft_striteri.c ft_strjoin.c \
	   ft_strlcat.c ft_strmap.c ft_strmapi.c ft_strncat.c ft_strncmp.c \
	   ft_strncpy.c ft_strnequ.c ft_strnew.c ft_strnstr.c ft_strrchr.c \
	   ft_strsplit.c ft_strstr.c ft_strsub.c ft_strtrim.c ft_tolower.c \
	   ft_toupper.c ft_memchr.c ft_itoa.c ft_strdel.c ft_putendl_fd.c \
	   ft_putnbr.c ft_putnbr_fd.c

all: $(NAME)

$(NAME):
	gcc  $(FLAGS) -c $(SRCS)
	ar rc $(NAME) $(SRCS:.c=.o)
	ranlib $(NAME)

clean:
	/bin/rm -rf $(SRCS:.c=.o)

fclean: clean
	/bin/rm -rf $(NAME)

re: fclean all
