from my_library cimport fib, fib_unroll

# We can have some functions that just wrap C functions...
def c_fib(int n):
    return fib(n)

def c_fib_unroll(int n):
    return fib_unroll(n)

# We can also write new Cython code
cpdef int cyjufib_unroll(int n):
    cdef int f_n2,f_n1
    cdef int i
    if n <= 1:
        return 1
    f_n2,f_n1 = 1,1
    for i in range(n-2):
        f_n2,f_n1 = f_n1,f_n1+f_n2
    return f_n1+f_n2

# And we can export Cython functions to be called with C (provided they link with Python)
cdef api int cyfib_unroll(int n):
    cdef int f_n2,f_n1
    cdef int i
    if n <= 1:
        return 1
    f_n2,f_n1 = 1,1
    for i in range(n-2):
        f_n2,f_n1 = f_n1,f_n1+f_n2
    return f_n1+f_n2