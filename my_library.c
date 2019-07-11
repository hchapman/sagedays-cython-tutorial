
#include "my_library.h"

int fib(int n) {
    if(n <= 1) {
        return 1;
    }
    return fib(n-2)+fib(n-1);
}

int fib_unroll(int n){
    if(n <= 1){
        return 1;
    }
    int f2=1, f1=1;
    for(int i=0; i<n-2; i++) {
        f1 = f1 + f2;
        f2 = f1 - f2; // = f1
    }
    return f1 + f2;
}