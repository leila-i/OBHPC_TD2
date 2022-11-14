//
#if defined(__INTEL_COMPILER)
#include <mkl.h>
#else
#include <cblas.h>
#endif

//
#include "types.h"

//Baseline - naive implementation
f64 dotprod_base(f64 *restrict a, f64 *restrict b, u64 n)
{
  double d = 0.0;
  
  for (u64 i = 0; i < n; i++)
    d += a[i] * b[i];

  return d;
}

//
f64 dotprod_unrollx8(f64 *restrict a, f64 *restrict b, u64 n)
{

#define UNROLL8 8
  
  double d = 0.0;

	  //Unroll 8 times
	  for (u64 i = 0; i < (n - (n & (UNROLL8 - 1))); i += UNROLL8)
	    {
          d += a[i * n] * b[i * n];
          d += a[i * n + 1] * b[i * n + 1];
          d += a[i * n + 2] * b[i * n + 2];
          d += a[i * n + 3] * b[i * n + 3];
          d += a[i * n + 4] * b[i * n + 4];
          d += a[i * n + 5] * b[i * n + 5];
          d += a[i * n + 6] * b[i * n + 6];
          d += a[i * n + 7] * b[i * n + 7];
	    }

	  //Manage the leftovers
	  for (u64 i = (n - (n & 7)); i < n; i++)
          d += a[i * n] * b[i * n];

  return d;
}
