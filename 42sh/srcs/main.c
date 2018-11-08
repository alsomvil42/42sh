/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bsiche <bsiche@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/26 18:12:58 by bsiche            #+#    #+#             */
/*   Updated: 2018/10/20 02:11:35 by bsiche           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "sh42.h"

int		yan_putchar(int c)
{
	return (write(STDERR_FILENO, &c, 1));
}

void	init_key_list(void)
{
	char	*tmp;

	g_tracking.key_list = lstcontainer_new();
	lstcontainer_add(g_tracking.key_list, ft_strdup(K_LEFT));
	lstcontainer_add(g_tracking.key_list, ft_strdup(K_RIGHT));
	lstcontainer_add(g_tracking.key_list, ft_strdup(K_DOWN));
	lstcontainer_add(g_tracking.key_list, ft_strdup(K_UP));
	lstcontainer_add(g_tracking.key_list, ft_strdup(K_RT));
	lstcontainer_add(g_tracking.key_list, ft_strdup(K_RTN));
}

void	cursorinit(void)
{
	if ((g_tracking.pos = malloc(sizeof(t_cursor *) + 1)) == NULL)
	{
		ft_putendl("Failled to allocate memory");
		exit(EXIT_FAILURE);
	}
	g_tracking.pos->x = 1;
	g_tracking.pos->y = 0;
	if ((g_tracking.str = ft_strnew(1024)) == NULL)
	{
		ft_putendl("Failled to allocate memory");
		exit(EXIT_FAILURE);
	}
	g_tracking.str = ft_strnew(0);
	init_key_list();
}

int		main(void)
{
	char	*prompt;

	cursorinit();
	ft_putstr(">");
	get_term();
	get_key();
	return (0);
}
