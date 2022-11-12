CFLAGS=-Wall

INTEL_LFLAGS=-qmkl
GNU_LFLAGS=-lm -lblas

FILES=main.c tools.c kernels.c

all: dgemm

dgemm:
ifeq ($(CC),icc)
ifeq ($(OFLAGS),-O0)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(OFLAGS),-O1)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(OFLAGS),-O2)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(OFLAGS),-O3)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(OFLAGS),-Os)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(OFLAGS),-Og)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(OFLAGS),-Ofast)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
	@echo "ERROR: no optimisation flags using OFLAGS. Possible values for OFLAGS: -O0, -01, -O2, -O3, -Os,-Og,-Ofast"
endif
endif
endif
endif
endif
endif
endif
else
ifeq ($(CC),icx)
ifeq ($(OFLAGS),-O0)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(OFLAGS),-O1)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(OFLAGS),-O2)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(OFLAGS),-O3)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(OFLAGS),-Os)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(OFLAGS),-Og)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(OFLAGS),-Ofast)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
	@echo "ERROR: no optimisation flags using OFLAGS. Possible values for OFLAGS: -O0, -01, -O2, -O3, -Os,-Og,-Ofast"
endif
endif
endif
endif
endif
endif
endif
else
ifeq ($(CC),gcc)
ifeq ($(OFLAGS),-O0)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(OFLAGS),-O1)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(OFLAGS),-O2)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(OFLAGS),-O3)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(OFLAGS),-Os)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(OFLAGS),-Og)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(OFLAGS),-Ofast)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
	@echo "ERROR: no optimisation flags using OFLAGS. Possible values for OFLAGS: -O0, -01, -O2, -O3, -Os,-Og,-Ofast"
endif
endif
endif
endif
endif
endif
endif
else
ifeq ($(CC),clang)
ifeq ($(OFLAGS),-O0)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(OFLAGS),-O1)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(OFLAGS),-O2)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(OFLAGS),-O3)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(OFLAGS),-Os)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(OFLAGS),-Og)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(OFLAGS),-Ofast)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
	@echo "ERROR: no optimisation flags using OFLAGS. Possible values for OFLAGS: -O0, -01, -O2, -O3, -Os,-Og,-Ofast"
endif
endif
endif
endif
endif
endif
endif
else
	@echo "ERROR: no compiler specified using CC. Possible values for CC: gcc, icc, icx, clang"
endif
endif
endif
endif

clean:
	@rm -Rf dgemm
