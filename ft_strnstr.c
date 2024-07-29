/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rafaefer <rafaefer@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/19 17:01:46 by rafaefer          #+#    #+#             */
/*   Updated: 2024/05/04 20:42:14 by rafaefer         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *haystack, const char *needle, size_t len)
{
	size_t	i;
	size_t	j;

	i = 0;
	if (*needle == '\0' && len > 0)
		return ((char *)haystack);
	while (i < len && haystack[i])
	{
		j = 0;
		while (haystack[i + j] && needle[j]
			&& i + j < len && haystack[i + j] == needle[j])
		{
			j++;
		}
		if (!needle[j])
			return ((char *)(haystack + i));
		i++;
	}
	if (*needle == '\0')
		return ((char *)haystack);
	return (NULL);
}
