/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   stringsearch.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bsiche <bsiche@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/19 13:51:33 by bsiche            #+#    #+#             */
/*   Updated: 2018/10/30 17:15:14 by bsiche           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "sh42.h"

void		multi_line(void)
{
	int 	size;
	int		win;

	size = g_tracking.pos->x;
	win = g_tracking.terminfo->sizex;
	if (size >= win)
	{
		g_tracking.pos->y++;
		g_tracking.pos->x = 0;
	}
}

int		get_pos(void)
{
	int i;

	i = 0;
	if (g_tracking.pos->y == 0)
		return (g_tracking.pos->x - 1);
	i = g_tracking.pos->y * g_tracking.terminfo->sizex;
	i -= g_tracking.pos->y;
	i = g_tracking.pos->x + i;
	return (i);
}

void		add_to_str(char *str)
{
	int		i;
	int		a;
	char	*start;
	char	*end;

	if (str != NULL)
	{
		a = 0;
		i = utf_strlen(str);
		a = get_pos();
		start = ft_strsub(g_tracking.str, 0, a, 0);
		end = ft_strsub(g_tracking.str, a, utf_strlen(g_tracking.str), 0);
		start = ft_strjoin(start, str, 3);
		free(g_tracking.str);
		g_tracking.str = ft_strjoin(start, end, 3);
		multi_line();
		g_tracking.pos->x += i;
		clear_screen2();
		ft_putstr(">");
		ft_putstr(g_tracking.str);
	}
}

void		ft_clean(void)
{
	int		i;
	int		a;
	char	*dup;

	a = 0;
	i = ft_strlen(g_tracking.str);
	dup = ft_strnew(i);
	while (a < i - 1)
	{
		dup[a] = g_tracking.str[a];
		a++;
	}
	dup[a] = '\0';
	free(g_tracking.str);
	g_tracking.str = dup;
}

void		rem_from_str(void)
{
	if (g_tracking.str)
	{
		ft_clean();
	}
	if (ft_strlen(g_tracking.str) == 0)
	{
		free(g_tracking.str);
		g_tracking.str = NULL;
	}
	g_tracking.pos->x = g_tracking.pos->x - 1;
}
