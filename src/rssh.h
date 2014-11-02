/* Initialize c functions
 */
#ifndef SFTP_H
#define SFTP_H

void sftp_download(char **hostname_arg, char **username_arg, char **password_arg, char **sftppath_arg, char **localpath_arg, int *result);
void sftp_upload(char **hostname_arg, char **username_arg, char **password_arg, char **sftppath_arg, char **localpath_arg, int *result);
void sftp_mkdir(char **hostname_arg, char **username_arg, char **password_arg, char **sftppath_arg, int *result);
void sftp_rmdir(char **hostname_arg, char **username_arg, char **password_arg, char **sftppath_arg, int *result);
void sftp_isdir(char **hostname_arg, char **username_arg, char **password_arg, char **sftppath_arg, int *result);

#endif
