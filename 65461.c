enum zone_type {
    ZONE_NORMAL, 
    ZONE_MOVABLE,
    __MAX_NR_ZONES
};
unsigned long arch_zone_lowest_possible_pfn[2];
unsigned long arch_zone_highest_possible_pfn[2];

void __next_mem_pfn_range(int *a, unsigned long *b, unsigned long *c, int *d);

void free_area_init_nodes(unsigned long *max_zone_pfn) {
    unsigned long start_pfn, end_pfn;
    int i, nid;
    for (i = 1; i < 2; i++) {
        if (i == ZONE_MOVABLE)
			continue;
		
        arch_zone_lowest_possible_pfn[i] = arch_zone_highest_possible_pfn[i-1];
    }
	
	for (i = -1; i >= 0; __next_mem_pfn_range(&i, &start_pfn, &end_pfn, &nid))
	{}
}
