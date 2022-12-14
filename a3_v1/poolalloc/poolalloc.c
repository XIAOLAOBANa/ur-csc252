#include "dbll.h"
#include <stdlib.h>
#include "poolalloc.h"
#include <stdio.h>

/*
   a pool-based allocator that uses doubly-linked lists to track
   allocated and free blocks
 */

/* create and initialize a memory pool of the required size */
/* use malloc() or calloc() to obtain this initial pool of memory from the system */
struct memory_pool *mpool_create(size_t size)
{
	

	/* set start to memory obtained from malloc */
	/* set size to size */
	struct memory_pool *p;
	p = (struct memory_pool *)malloc(sizeof(struct memory_pool));
	p->start = (char *)malloc(sizeof(char)*size);
	p->size = size;

	/* create a doubly-linked list to track allocations */
	/* create a doubly-linked list to track free blocks */
	p->alloc_list = dbll_create();
	p->free_list = dbll_create();

	/* create a free block of memory for the entire pool and place it on the free_list */
	struct alloc_info *info = (struct alloc_info *)malloc(sizeof(struct alloc_info));;
	info->offset = 0;
	info->size = size;

	dbll_append(p->free_list, info);

	/* return memory pool object */
  	return p;
}

/* ``destroy'' the memory pool by freeing it and all associated data structures */
/* this includes the alloc_list and the free_list as well */
void mpool_destroy(struct memory_pool *p)
{
	/* make sure the allocated list is empty (i.e. everything has been freed) */
	/* free the alloc_list dbll */
	/* free the free_list dbll  */
	/* free the memory pool structure */

	dbll_free(p->alloc_list);
	dbll_free(p->free_list);
	free(p);

}


/* allocate a chunk of memory out of the free pool */

/* Return NULL if there is not enough memory in the free pool */

/* The address you return must be aligned to 1 (for size=1), 2 (for
   size=2), 4 (for size=3,4), 8 (for size=5,6,7,8). For all other
   sizes, align to 16.
*/

void *mpool_alloc(struct memory_pool *p, size_t size)
{
	size_t request_size = size;
	if(size > 2 && size <= 4)
		size = 4;
	else if (size > 4 && size <= 8)
		size = 8;
	else if (size > 8)
		if(size % 16)
			size = (size/16 + 1)*16;

	// if(p->free_list->first->user_data->size < size)
	// 	return NULL;
		
	// if(size <= 2)
	// 	if(p->free_list->first->user_data->size < size)
	// 		return NULL;
	// // else if (size == 3 || size == 4)
	// else if (size <= 4)
	// 	if(p->free_list->first->user_data->size < 4)
	// 		return NULL;
	// else if (size <= 8)
	// 	if(p->free_list->first->user_data->size < 8)
	// 		return NULL;
	// else
	// 	if(p->free_list->first->user_data->size < 16)
	// 		return NULL;

	/* check if there is enough memory for allocation of `size` (taking
		alignment into account) by checking the list of free blocks */
	

	/* search the free list for a suitable block */
	/* there are many strategies you can use: first fit (the first block that fits),
		best fit (the smallest block that fits), etc. */

	// 1. ????????????????????????????????????
	struct alloc_info *first = p->free_list->first->user_data;
	if(!first->offset)
	{
		struct alloc_info *info_free = p->free_list->first->user_data;
		info_free->offset = size;
		info_free->size = p->size - size;
		info_free->request_size = size;

		// print_user_data(p);
		// dbll_append(p->free_list, info_free);

		struct alloc_info * info_allocate = (struct alloc_info *)malloc(sizeof(struct alloc_info));
		info_allocate->offset = 0;
		info_allocate->size = size;
		info_allocate->request_size = size;

		dbll_append(p->alloc_list, info_allocate);

		return p->start;

		// p->free_list->first->user_data->offset = 0;
		// p->free_list->first->user_data->size = size - request_size;
		// p->free_list->first->user_data->request_size = request_size;


		// struct alloc_info *info2 = (struct alloc_info *)malloc(sizeof(struct alloc_info));;
		// info2->offset = size;
		// info2->size = p->size - size;
		// info2->request_size = 0;

		// q->user_data = info2;

		// q->user_data->offset = size;
		// q->user_data->size = p->size - size;
		// q->user_data->request_size = 0;

		// dbll_append(p->free_list, q->user_data);

		// dbll_append(p->alloc_list, p->free_list->first->user_data);
		// return p->start[size];
	}

	struct llnode *r = p->free_list->first; 
	struct alloc_info * info = r->user_data;
	while(info->size < size && r != NULL)
	{
		r = r->next;
		if(r != NULL)
			info = r->user_data;
	}

	if(r != NULL)
	{
		size_t offset = info->offset;
		// printf("%ld\n", offset);
		while(offset % size)
			offset++;
		// printf("%ld\n", offset);
		// 1. ?????????????????????????????????
		// ?????????free list??????????????????????????????
		// ?????????????????????????????????
		if(offset - info->offset != 0)
		{
			struct alloc_info * info_new = (struct alloc_info *)malloc(sizeof(struct alloc_info));
			info_new->offset = info->offset;
			info_new->size = offset - info->offset;

			dbll_insert_before(p->free_list, r, info_new);
		}
		info->size = info->size - (offset - info->offset) - size;
		info->offset = offset + size;
		
		
		// print_user_data(p);
		/***********************************************/

		// 	struct alloc_info * info_allocate = (struct alloc_info *)malloc(sizeof(struct alloc_info));

		// 	info_allocate->offset = offset;
		// 	info_allocate->size = size;
		// 	info_allocate->request_size = request_size;

		// 	dbll_append(p->alloc_list, info_allocate);

		struct alloc_info * info_allocate = (struct alloc_info *)malloc(sizeof(struct alloc_info));

		info_allocate->offset = offset;
		info_allocate->size = size;
		info_allocate->request_size = request_size;

		dbll_append(p->alloc_list, info_allocate);

		return p->start + offset;
	}
	
	return NULL;


	// struct alloc_info *last = p->free_list->last->user_data;
	// if(last->size >= size)
	// {
	//  	struct alloc_info * info_free = (struct alloc_info *)malloc(sizeof(struct alloc_info));

	// 	size_t offset = last->offset;
	// 	// printf("%ld\n", offset);
	// 	while(offset % size)
	// 		offset++;
	// 	// printf("%ld\n", offset);
	// 	info_free->offset = offset + size;
	// 	info_free->size = last->size - (offset - last->offset) - size;
	// 	// info_free->request_size = size;

	// 	dbll_append(p->free_list, info_free);

	// 	/***********************************************/

	// 	struct alloc_info * info_allocate = (struct alloc_info *)malloc(sizeof(struct alloc_info));

	// 	info_allocate->offset = offset;
	// 	info_allocate->size = size;
	// 	info_allocate->request_size = request_size;

	// 	dbll_append(p->alloc_list, info_allocate);

	// 	return p->start + offset;
	// }
	// else	
	// 	return NULL;

	// // 2. general situation
	// struct llnode *r = p->free_list->first; 
	// struct alloc_info * info = r->user_data;
	// while(info->size < size && r->next != NULL)
	// {
	// 	r = r->next;
	// 	info = r->user_data;
	// }
	// // 2.1 ??????????????????
	// // 2.1.1 ??????r
	// // 2.1.2 r???????????????
	// // 2.1.3 alloc_list???????????????
	// if(r->next != NULL)
	// {
	// 	struct alloc_info * info_r = r->user_data;

	// 	struct llnode *q = (struct llnode *)malloc(sizeof(struct llnode));
	// 	struct alloc_info * info_q = (struct alloc_info *)malloc(sizeof(struct alloc_info));


	// 	info_q->offset = info_r->offset + info_r->request_size;
	// 	info_q->size = info_r->size - size;
	// 	info_q->request_size = size;

	// 	q->user_data = info_q;

	// 	// q->user_data->offset = r->user_data->offset + r->user_data->request_size;
	// 	// q->user_data->size = r->user_data->size - size;
	// 	// q->user_data->request_size = size;

	// 	info_r->request_size += info_r->size;
	// 	info_r->size = 0;

	// 	dbll_insert_after(p->free_list, r, q->user_data);

	// 	dbll_append(p->alloc_list, q->user_data);
	// 	// return q->user_data->offset;
	// 	return &(p->start)[info_q->offset];
	// }

	// // 2.2 ???????????????????????????????????????
	// if(info->size >= size)
	// {
	// 	struct llnode *q = (struct llnode *)malloc(sizeof(struct llnode));

	// 	struct alloc_info * info_r = r->user_data;
	// 	struct alloc_info * info_q = (struct alloc_info *)malloc(sizeof(struct alloc_info));;

	// 	info_q->offset = info_r->offset + size;
	// 	info_q->size = info_r->size - size;
	// 	info_q->request_size = request_size;

	// 	q->user_data = info_q;

	// 	// q->user_data->offset = r->user_data->offset + size;
	// 	// q->user_data->size = r->user_data->size - size;
	// 	// q->user_data->request_size = request_size;

	// 	info_r->size = size - request_size;
	// 	info_r->request_size = request_size;

	// 	// r->user_data->size = size - request_size;
	// 	// r->user_data->request_size = request_size;

	// 	dbll_append(p->free_list, q->user_data);
	// 	dbll_append(p->alloc_list, r->user_data);
	// 	return &p->start[info_r->offset];
	// }
	// else//2.3 ?????????????????????????????????
	// 	return NULL;

	/* if no suitable block can be found, return NULL */

	/* if found, create an alloc_info node, store start of new region
		into offset, set size to allocation size (take alignment into
		account!), set free to null */

	/* add the new alloc_info node to the memory pool's allocated
		list */

	/* return pointer to allocated region*/
}

/* Free a chunk of memory out of the pool */
/* This moves the chunk of memory to the free list. */
/* You may want to coalesce free blocks [i.e. combine two free blocks
   that are are next to each other in the pool into one larger free
   block. Note this requires that you keep the list of free blocks in order */
void mpool_free(struct memory_pool *p, void *addr)
{
	/* search the alloc_list for the block */
	size_t offset = &((char *)addr)[0] - &p->start[0];
	// printf("%ld\n", offset);

	struct llnode *r = p->alloc_list->first; 
	struct alloc_info * info_alloc = r->user_data;
	while(info_alloc->offset != offset && r != NULL)
	{
		r = r->next;
		if(r != NULL)
			info_alloc = r->user_data;
	}
	printf("%ld %ld %ld\n", info_alloc->offset, info_alloc->size, info_alloc->request_size);

	
	if(r != NULL)
	{
		struct llnode *q = p->free_list->first; 
		struct alloc_info * info_free = q->user_data;
		while(info_free->offset != info_alloc->offset + info_alloc->size && info_alloc->offset != info_free->offset + info_free->size && q != NULL)
		{
			q = q->next;
			if(q != NULL)
				info_free = q->user_data;
		}
		// printf("%ld %ld %ld\n", info_free->offset, info_free->size, info_free->request_size);

		/* coalesce the free_list */
		
		print_user_data(p);
		if(q != NULL)
		{
			if(info_free->offset == info_alloc->offset + info_alloc->size)
			{
				info_free->offset = info_alloc->offset;
				info_free->size += info_alloc->size;
			}
			else 
			{
				info_free->size += info_alloc->size;
			}
		}
		// move it to the free_list
		else
			dbll_append(p->free_list, info_alloc);
		print_user_data(p);
		printf("***********************\n");
	}
}


void print_user_data(struct memory_pool *p)
{
	struct llnode *q = p->free_list->first;
	struct alloc_info * info = q->user_data;
	while(q != NULL)
	{
		info = q->user_data;
		printf("%ld %ld\t", info->offset, info->size);
		q = q->next;
	}
	printf("\n");
}
