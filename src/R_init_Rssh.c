/* Initialize c functions used by R wrapper functions
 *
 */
#include <Rdefines.h>
#include <R_ext/Rdynload.h>
#include "rssh.h"

static const R_CallMethodDef callMethods[] = {
	    {"sftp_download", (DL_FUNC) &sftp_download, 6},
	    {"sftp_upload", (DL_FUNC) &sftp_upload, 6},
	    {"sftp_mkdir", (DL_FUNC) &sftp_mkdir, 5},
	    {"sftp_rm", (DL_FUNC) &sftp_rm, 5},
	    {"sftp_rmdir", (DL_FUNC) &sftp_rmdir, 5},
	    {"sftp_isdir", (DL_FUNC) &sftp_isdir, 5},
    {NULL, NULL, 0}
};

void
R_init_Rssh(DllInfo *info)
{
    R_registerRoutines(info, NULL, callMethods, NULL, NULL);
}

void
R_unload_Rssh(DllInfo *info)
{
    /* any clean-up when package unloaded */
}
