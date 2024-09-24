#include <stdio.h>

int* create_ip(){
    int i = 2;
    int* ip = &i;
    return ip;
}

int main() {
    printf("Hello world!\n");

    int* ip;
    ip = create_ip();
    printf("cijfer is %i\n", *ip);
}
