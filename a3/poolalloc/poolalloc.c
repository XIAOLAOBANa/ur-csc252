#include "dbll.h"
#include <stdlib.h>
#include "poolalloc.h"

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
	struct alloc_info *info;
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

	// 1. 初始情况，分配第一个节点
	// 1.1 修改free_list的first节点
	// 1.2 在fisrt后增添新的节点
	// 1.3 alloc_list增添新结点
	// 1.4 返回偏移量
	if(p->free_list->first == p->free_list->last)
	{
		struct llnode *q;
		q = (struct llnode *)malloc(sizeof(struct llnode));

		p->free_list->first->user_data->offset = 0;
		p->free_list->first->user_data->size = size - request_size;
		p->free_list->first->user_data->request_size = request_size;

		q->user_data->offset = size;
		q->user_data->size = p->size - size;
		q->user_data->request_size = 0;

		dbll_append(p->free_list, q->user_data);

		dbll_append(p->alloc_list, p->free_list->first->user_data);
		return p->start;
	}

	// 2. general situation
	struct llnode *r = p->free_list->first; 
	while(r->user_data->size < size && r->next != NULL)
	{
		r = r->next;
	}
	// 2.1 中间有满足的
	// 2.1.1 修改r
	// 2.1.2 r后增添节点
	// 2.1.3 alloc_list增添新结点
	if(r->next != NULL)
	{
		struct llnode *q;
		q = (struct llnode *)malloc(sizeof(struct llnode));

		q->user_data->offset = r->user_data->offset + r->user_data->request_size;
		q->user_data->size = r->user_data->size - size;
		q->user_data->request_size = size;

		r->user_data->request_size += r->user_data->size;
		r->user_data->size = 0;

		dbll_insert_after(p->free_list, r, q->user_data);

		dbll_append(p->alloc_list, q->user_data);
		return q->user_data->offset;
	}

	// 2.2 中间没有满足的，只能去末尾
	if(r->size >= size)
	{
		struct llnode *q;
		q = (struct llnode *)malloc(sizeof(struct llnode));

		q->user_data->offset = r->user_data->offset + size;
		q->user_data->size = r->user_data->size - size;
		q->user_data->request_size = request_size;

		r->user_data->size = size - request_size;
		r->user_data->request_size = request_size;

		dbll_append(p->free_list, q->user_data);
		dbll_append(p->alloc_list, r->user_data);
		return r->user_data->offset;
	}
	else//2.3 末尾也满足不了，返回空
		return NULL;

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
  /* move it to the free_list */
  /* coalesce the free_list */
}
