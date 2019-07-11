#include <stdio.h>

#include "multiply_demo_api.h"

int main() {
    Py_Initialize();
    printf("Importing module...");
    if (import_demo() == 0) { 
        printf("success!\n");
    } else {
        printf("error...\n");
        return 1;
    }
    
    printf("The 30th Fibonacci number is %d", cyfib_unroll(30));
    Py_Finalize();
    return 0;
}