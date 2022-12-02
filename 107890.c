
    #include <stdint.h>
    #include <stdio.h>
    #include <stdlib.h>

    uint8_t tab[0x1ff + 1];

    uint8_t f(int32_t x)
    {
        if (x < 0)
            return 0;
        int32_t i = x * 0x1ff / 0xffff;
        if (i >= 0 && i < sizeof(tab)) {
            printf("tab[%d] looks safe because %d is between [0;%d[\n", i, i, (int)sizeof(tab));
            return tab[i];
        }

        return 0;
    }

    int main(int ac, char **av)
    {
        return f(atoi(av[1]));
    }
