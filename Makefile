SRC	= ft_isalpha.c ft_isdigit.c \
	ft_isalnum.c ft_isascii.c \
	ft_isprint.c ft_strlen.c \
	ft_memset.c ft_bzero.c \
	ft_memcpy.c ft_memmove.c \
	ft_strlcat.c ft_toupper.c \
	ft_tolower.c ft_strchr.c \
	ft_strrchr.c ft_strncmp.c \
	ft_memchr.c ft_strnstr.c \
	ft_atoi.c ft_calloc.c \
	ft_substr.c ft_memcmp.c \
	ft_strdup.c ft_strlcpy.c \
	ft_strjoin.c ft_strtrim.c \
	ft_split.c ft_itoa.c \
	ft_strmapi.c ft_striteri.c \
	ft_putchar_fd.c ft_putstr_fd.c \
	ft_putendl_fd.c  ft_putnbr_fd.c \

BONUS_SRC = ft_lstnew.c ft_lstadd_front.c \
	ft_lstsize.c ft_lstlast.c \
	ft_lstadd_back.c ft_lstdelone.c \
	ft_lstclear.c ft_lstiter.c \
	ft_lstmap.c
	
OBJ = $(SRC:.c=.o)

BONUS_OBJ = $(BONUS_SRC:.c=.o)

NAME = libft.a

NAME_BONUS = libft.a

FLAGS = -Wall -Wextra -Werror

HEADER = libft.h

all: $(NAME)

$(NAME):
	cc $(FLAGS) -c $(SRC)
	ar rcs $(NAME) $(OBJ)

bonus: $(BONUS_OBJ) $(OBJ)
	ar rcs $(NAME) $(BONUS_OBJ) $(OBJ)

# main: $(SRC) $(BONUS_SRC)
# 	cc $(FLAGS) $^ -o $@

clean:
	rm -rf $(OBJ) $(BONUS_OBJ)

fclean: clean
	rm -f $(NAME) a.out
	
re: fclean all
