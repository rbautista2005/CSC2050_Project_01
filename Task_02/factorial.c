#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int n, i;
    long result = 1;

    //  make sure the user gave us exactly one number 
    if (argc != 2) {
        printf("Usage: %s <number>\n", argv[0]);
        return 1;
    }

    // atoi turns the text argument into an int
    n = atoi(argv[1]);

    // multiply 1 * 2 * 3 * ... * n
    for (i = 1; i <= n; i++) {
        result = result * i;
    }

    printf("%ld\n", result);

    return 0;
}
