#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>

#include <kernel/tty.h>

void kernel_early(void)
{
    terminal_initialize();
}

void kernel_main(void)
{   
    printf("gig os 0.0.1\n");
    printf("\n");
    printf("hello\n");
}
