#include <iostream>

// 循环的并行化
__global__ void some_kernal_func(int* const a,int* const b,int* const c){
    const unsigned int thread_idx = threadIdx.x;
    a[thread_idx] = b[thread_idx] * c[thread_idx];
}

int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
