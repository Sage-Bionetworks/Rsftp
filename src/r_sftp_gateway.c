
int rssh_sftp_download(char *host, char *user, char *sftppath, char *localpath);
int rssh_sftp_upload(char *host, char *user, char *sftppath, char *localpath);
int rssh_sftp_mkdir(char *host, char *user, char *sftppath);
int rssh_sftp_rmdir(char *host, char *user, char *sftppath);
int rssh_sftp_isdir(char *host, char *user, char *sftppath);
void set_user_password(char *pass);
void init();

/* ------- temporary ------------- */
int rssh_sftp_download(char *host, char *user, char *sftppath, char *localpath) {
	return 0;
}
int rssh_sftp_upload(char *host, char *user, char *sftppath, char *localpath) {
	return 0;
}
int rssh_sftp_mkdir(char *host, char *user, char *sftppath) {
	return 0;
}
int rssh_sftp_rmdir(char *host, char *user, char *sftppath) {
	return 0;
}
int rssh_sftp_isdir(char *host, char *user, char *sftppath) {
	return 0;
}
void set_user_password(char *pass) {
	return;
}
void init() {
	return;
}
/* ------------------------------- */
static int sftp_initialized = 0;

/**
 * Download a file from an sftp server.
 */
void sftp_download(char **hostname_arg, char **username_arg, char **password_arg, char **sftppath_arg, char **localpath_arg, int *result)
{
	if (!sftp_initialized) {
		init();
		sftp_initialized = 1;
	}
	set_user_password(*password_arg);
	*result = rssh_sftp_download(*hostname_arg, *username_arg, *sftppath_arg,*localpath_arg);
}

void sftp_upload(char **hostname_arg, char **username_arg, char **password_arg, char **sftppath_arg, char **localpath_arg, int *result)
{
	if (!sftp_initialized) {
		init();
		sftp_initialized = 1;
	}
	set_user_password(*password_arg);
	*result = rssh_sftp_upload(*hostname_arg, *username_arg, *sftppath_arg,*localpath_arg);
}

void sftp_mkdir(char **hostname_arg, char **username_arg, char **password_arg, char **sftppath_arg, int *result) {
	if (!sftp_initialized) {
		init();
		sftp_initialized = 1;
	}
	set_user_password(*password_arg);
	*result = rssh_sftp_mkdir(*hostname_arg, *username_arg, *sftppath_arg);
}

void sftp_rmdir(char **hostname_arg, char **username_arg, char **password_arg, char **sftppath_arg, int *result) {
	if (!sftp_initialized) {
		init();
		sftp_initialized = 1;
	}
	set_user_password(*password_arg);
	*result = rssh_sftp_rmdir(*hostname_arg, *username_arg, *sftppath_arg);
}

void sftp_isdir(char **hostname_arg, char **username_arg, char **password_arg, char **sftppath_arg, int *rc) {
	if (!sftp_initialized) {
		init();
		sftp_initialized = 1;
	}
	set_user_password(*password_arg);
	*rc = rssh_sftp_isdir(*hostname_arg, *username_arg, *sftppath_arg);
}

