# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jjourdan <jjourdan@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/27 23:26:02 by jjourdan          #+#    #+#              #
#    Updated: 2021/01/23 12:15:51 by jjourdan         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

CC			=	gcc

INC_DIR		=	./includes

FLAGS		=	-Wall -Wextra -Werror

NAME		=	libftprintf.a

SRC			=	sources/utils/ft_printf_atoi.c \
				sources/utils/ft_printf_itoa.c \
				sources/utils/ft_printf_memset.c \
				sources/utils/ft_printf_putchar_fd.c \
				sources/utils/ft_printf_strlen.c \
				sources/utils/ft_printf_utoa.c \
				sources/utils/ft_printf_xtoa.c \
				sources/utils/ft_printf_putstr_fd.c \
				sources/utils/ft_printf_calloc.c \
				sources/utils/ft_printf_ptoa.c \
				sources/ft_printf_flag_init.c \
				sources/ft_printf_flag_reset.c \
				sources/ft_printf_get_add_flags.c \
				sources/ft_printf_get_first_flags.c \
				sources/ft_printf_get_flag.c \
				sources/ft_printf_get_prec.c \
				sources/ft_printf_get_type.c \
				sources/ft_printf_get_width.c \
				sources/ft_printf_print_c.c \
				sources/ft_printf_print_s.c \
				sources/ft_printf_print_x.c \
				sources/ft_printf.c \
				sources/ft_printf_treat_flag.c \
				sources/ft_printf_treat_input.c \
				sources/ft_printf_print_normal.c \
				sources/ft_printf_print_percent.c \
				sources/ft_printf_print_p.c

OBJ			=	$(SRC:.c=.o)

all:			$(NAME)

$(NAME): $(OBJ)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)

%.o: %.c		$(INC_DIR)/ft_printf.h
		$(CC) $(FLAGS) -I$(INC_DIR) -c $< -o $@

clean:
		rm -f $(OBJ)

fclean:			clean
		rm -f $(NAME)

re:				fclean all

.PHONY: all, clean, fclean, re