/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: romendy <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/22 18:48:36 by romendy           #+#    #+#             */
/*   Updated: 2018/12/03 04:49:32 by romendy          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strncat(char *dst, const char *str, size_t n)
{
	char *c;

	c = dst;
	while (*c != '\0')
		c++;
	while (*str != '\0' && n-- > 0)
		*c++ = *str++;
	*c = '\0';
	return (dst);
}
