#include "../libft/libft.h"

int	can_move(int c)
{
	if (c >= 0x80 && c <= 0xBF)
		return (1);
	return (0);
}

int			how_long(char *str)
{
	int i;
	int a;

	i = 0;
	a = 0;
	while (str[i])
    {
        if ((str[i] & 0xC0) != 0x80)
		    a++;
        i++;
    }
	return (a);
}

int		main(int argc, char **argv)
{
    int i;
    char *str;

    str = ft_strdup ("Lalaé");
    i = how_long(str);
    ft_putnbr(i);
    if (str[0] == 27 && str[1] == 91 && str[2] == 68 && str[3] == '\0')
        ft_putendl("Yeah");
	return (0);
}
