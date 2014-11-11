/* Initialize c functions used by R wrapper functions
 *
 */
#include <Rdefines.h>
#include <R_ext/Rdynload.h>
#include "rssh.h"

static const R_CMethodDef cMethods[] = {
	    {"C_sftp_download", (DL_FUNC) &sftp_download, 6},
	    {"C_sftp_upload", (DL_FUNC) &sftp_upload, 6},
	    {"C_sftp_mkdir", (DL_FUNC) &sftp_mkdir, 5},
	    {"C_sftp_rm", (DL_FUNC) &sftp_rm, 5},
	    {"C_sftp_rmdir", (DL_FUNC) &sftp_rmdir, 5},
	    {"C_sftp_isdir", (DL_FUNC) &sftp_isdir, 5},
    {NULL, NULL, 0}
};

void
R_init_Rssh(DllInfo *info)
{
    R_registerRoutines(info, cMethods, NULL, NULL, NULL);
}

void
R_unload_Rssh(DllInfo *info)
{
    /* any clean-up when package unloaded */
}
