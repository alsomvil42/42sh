/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   path.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mjose <mjose@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/19 15:07:32 by mjose             #+#    #+#             */
/*   Updated: 2018/09/08 01:28:03 by mjose            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minishell.h"

char	*giveme_curpath(void)
{
	char	*buf;

	buf = NULL;
	return (getcwd(buf, 1024));
}