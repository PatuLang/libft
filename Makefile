# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plang <plang@student.hive.fi>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/26 12:43:24 by plang             #+#    #+#              #
#    Updated: 2024/08/05 14:49:14 by plang            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

CC		= cc

CFLAGS	= -Wall -Wextra -Werror

SRCS	= src/ft_isalpha.c \
		src/ft_isdigit.c \
		src/ft_isalnum.c \
		src/ft_isascii.c \
		src/ft_isprint.c \
		src/ft_strlen.c \
		src/ft_memset.c \
		src/ft_bzero.c \
		src/ft_memcpy.c \
		src/ft_memmove.c \
		src/ft_strlcpy.c \
		src/ft_strlcat.c \
		src/ft_toupper.c \
		src/ft_tolower.c \
		src/ft_strchr.c \
		src/ft_strrchr.c \
		src/ft_strncmp.c \
		src/ft_memchr.c \
		src/ft_memcmp.c \
		src/ft_strnstr.c \
		src/ft_atoi.c \
		src/ft_calloc.c \
		src/ft_strdup.c \
		src/ft_substr.c \
		src/ft_strjoin.c \
		src/ft_strtrim.c \
		src/ft_split.c \
		src/ft_itoa.c \
		src/ft_strmapi.c \
		src/ft_striteri.c \
		src/ft_putchar_fd.c \
		src/ft_putstr_fd.c \
		src/ft_putendl_fd.c \
		src/ft_putnbr_fd.c 

BSRCS	= bonus/ft_lstnew_bonus.c \
		bonus/ft_lstadd_front_bonus.c \
		bonus/ft_lstsize_bonus.c \
		bonus/ft_lstlast_bonus.c \
		bonus/ft_lstadd_back_bonus.c \
		bonus/ft_lstdelone_bonus.c \
		bonus/ft_lstclear_bonus.c \
		bonus/ft_lstiter_bonus.c

OBJS	= $(SRCS:.c=.o)

BOBJS	= $(BSRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	@ar -cqs $(NAME) $(OBJS)

bonus: .bonus

.bonus: $(BOBJS)
	@ar -cqs $(NAME) $(BOBJS)
	@touch .bonus

clean:
	rm -f $(OBJS) $(BOBJS)
	rm -f .bonus

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)

.PHONY: all clean fclean re bonus
