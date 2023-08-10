#include <stdio.h>
#include <stdlib.h>
#include "lists.h"

/**
 * check_cycle - count the cycles
 * @list: input
 * Return: 0 if there is no cycle, 1 if there is a cycle
 */

int check_cycle(listint_t *list)
{

	listint_t *current;

	if (list)
	{
		while (list != NULL)
		{
			current = list;
			list = list->next;
			if (current <= list)
				return (1);
		}
		return (0);
	}
	return (0);

}
