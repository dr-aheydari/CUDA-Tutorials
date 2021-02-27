#include <stdio.h>

__global__ void loop()
{
    int curr_loc = threadIdx.x + blockIdx.x * blockDim.x;
    
    printf("This is iteration number %d\n", curr_loc);
}

int main()
{
  /*
   * we could also do <<<1,10>>> or <<<5,2>>>
   */

  int threads = 5;
  int blocks = 2;
  
  loop<<<blocks, threads>>>();
  cudaDeviceSynchronize();
}
