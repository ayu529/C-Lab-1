#include <stdio.h>
#include <stdlib.h>
#include "linkedlist.h"

int test_linked_list2();

int main()
{
  if(test_linked_list2())
    printf("Test OK.\n");
  else 
    printf("Test failed.\n");
  return 0;
}

int test_linked_list2() {
  struct list * l = NULL;
  l = create_list();
  if (l==NULL) return 0;

  if(!insert_end(l,10)) 
    return 0;
  if(!insert_after(l,l->last,50)) 
    return 0;
  if(!insert_before(l,l->last,40)) 
    return 0;
  if(!check_val(l,40)) 
    return 0;
  
  delete_list(l);
  return 1;
}
