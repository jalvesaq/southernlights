#include <stdio.h>
#include <stdlib.h>

/* Licence: Public Domain. */
/* TODO: improve the code. */

int main(int argc, char **argv) {
    const char *err = (char *)calloc(1024, sizeof(char));
    printf("Msg: %s!\n", err);
    free(error);
    return 0;
}
