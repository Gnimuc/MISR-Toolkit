/*! \file netcdf_mem.h
 *
 * Main header file for in-memory (diskless) functionality.
 *
 * Copyright 2018 University Corporation for Atmospheric
 * Research/Unidata. See COPYRIGHT file for more info.
 *
 * See \ref copyright file for more info.
 *
 */

/*
 * In order to use any of the netcdf_XXX.h files, it is necessary
 * to include netcdf.h followed by any netcdf_XXX.h files.
 * Various things (like EXTERNL) are defined in netcdf.h
 * to make them available for use by the netcdf_XXX.h files.
*/

#ifndef NETCDF_MEM_H
#define NETCDF_MEM_H 1

typedef struct NC_memio {
    size_t size;
    void* memory;
    int flags;
#define NC_MEMIO_LOCKED 1    /* Do not try to realloc or free provided memory */
} NC_memio;

#if defined(__cplusplus)
extern "C" {
#endif

/* Treat a memory block as a file; read-only */
EXTERNL int nc_open_mem(const char* path, int mode, size_t size, void* memory, int* ncidp);

EXTERNL int nc_create_mem(const char* path, int mode, size_t initialsize, int* ncidp);

/* Alternative to nc_open_mem with extended capabilities
   See docs/inmemory.md
 */
EXTERNL int nc_open_memio(const char* path, int mode, NC_memio* info, int* ncidp);

/* Close memory file and return the final memory state */
EXTERNL int nc_close_memio(int ncid, NC_memio* info);

#if defined(__cplusplus)
}
#endif

#endif /* NETCDF_MEM_H */
