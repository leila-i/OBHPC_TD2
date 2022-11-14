//
#if defined(__INTEL_COMPILER)
#include <mkl.h>
#else
#include <cblas.h>
#endif

//
#include "types.h"

//Baseline - naive implementation
f64 reduc_base(f64 *restrict a, u64 n)
{
  double d = 0.0;
  
  for (u64 i = 0; i < n; i++)
    d += a[i];

  return d;
}

//
f64 reduc_unrollx8(f64 *restrict a, u64 n)
{

#define UNROLL8 8
  
  double d = 0.0;

	  //Unroll 8 times
	  for (u64 i = 0; i < (n - (n & (UNROLL8 - 1))); i += UNROLL8)
	    {
          d += a[i * n];
          d += a[i * n + 1];
          d += a[i * n + 2];
          d += a[i * n + 3];
          d += a[i * n + 4];
          d += a[i * n + 5];
          d += a[i * n + 6];
          d += a[i * n + 7];
	    }

	  //Manage the leftovers
	  for (u64 i = (n - (n & 7)); i < n; i++)
          d += a[i * n];

  return d;
}
