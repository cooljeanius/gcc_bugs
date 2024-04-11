/*
 * Simple test program to reproduce a segmentation fault occurred in:
 *
 * hashtab.c - An expandable hash tables datatype.
 * Part of Libiberty - A collection of subroutines used by various GNU programs
 *
 * first entry in my ChangeLog
 * 2016-01-27  Iain Buclaw  <ibuclaw@gdcproject.org>
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>


/* public header */
#include "hashtab.h"


/* Define the objects to put in the hash table */
typedef struct
{
  char * key;
  int val;

} obj_t;


/* Object allocator */
static obj_t * mkobj (char * key, unsigned val)
{
  obj_t * obj = calloc (1, sizeof (* obj));
  obj -> key = strdup (key);
  obj -> val = val;

  return obj;
}


/* Object deallocator */
static void rmobj (obj_t * obj)
{
  free (obj -> key);
  free (obj);
}


/* Functions */
static hashval_t obj_hash (const void * obj)
{
  return htab_hash_string (((obj_t *) obj) -> key);
}


static int obj_cmp (const void * entry, const void * element)
{
  return ! strcmp (((obj_t *) entry) -> key, ((obj_t *) element) -> key);
}


static void obj_free (void * obj)
{
  rmobj (obj);
}


int main (int argc, const char * argv [])
{
  obj_t * obj;
  void ** slot;

  printf ("Hello world!\n");
  printf ("\n");
  printf ("  This program creates a hash table with htab_create().\n");
  printf ("    Then:\n");
  printf ("      * inserts 2 objects with htab_find_slot(INSERT).\n");
  printf ("      * delete 1 existent with htab_remove_elt().\n");
  printf ("      * attempt to delete 1 non existent with htab_remove_elt().\n");
  printf ("        Boom !!!\n");
  printf ("\n");

  /* Create a hash table */
  htab_t ht = htab_create (2, obj_hash, obj_cmp, obj_free);

  /* Allocate first object */
  obj = mkobj ("Hello", 1);
  printf ("Inserting [%s - %u] ... ", obj -> key, obj -> val);
  slot = htab_find_slot (ht, obj, INSERT);
  if (slot)
    * slot = obj;
  printf ("Ok\n");

  /* Allocate second object */
  obj = mkobj ("World!", 2);
  printf ("Inserting [%s - %u] ... ", obj -> key, obj -> val);
  slot = htab_find_slot (ht, obj, INSERT);
  if (slot)
    * slot = obj;
  printf ("Ok\n");

  /* Search for a hash table object equal to the first object */
  obj = mkobj ("Hello", 0);
  printf ("Searching for [%s] ... ", obj -> key);
  if (htab_find (ht, obj))
    printf ("Ok\n");
  else
    printf ("No\n");
  rmobj (obj);

  /* Search for a hash table object equal to the second object */
  obj = mkobj ("World!", 0);
  printf ("Searching for [%s] ... ", obj -> key);
  if (htab_find (ht, obj))
    printf ("Ok\n");
  else
    printf ("No\n");
  rmobj (obj);

  /* Delete the first object from the hash table */
  obj = mkobj ("Hello", 0);
  printf ("Deleting [%s] ... ", obj -> key);
  htab_remove_elt (ht, obj);
  if (htab_elements (ht) == 1)
    printf ("Ok\n");
  else
    printf ("No\n");
  rmobj (obj);

  /* Attempt to delete a non existent object from the hash table */
  obj = mkobj ("FooBar", 0);
  printf ("Deleting [%s] ... ", obj -> key);
  htab_remove_elt (ht, obj);
  if (htab_elements (ht) == 0)
    printf ("Ok\n");
  else
    printf ("No\n");
  rmobj (obj);

  /* Destroy the hash table */
  htab_delete (ht);

  printf ("\n");
  printf ("Bye bye!\n");

  return 0;
}
