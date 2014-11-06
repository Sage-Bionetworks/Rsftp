# sftpRemoveDirectory -- removes a directory from an sftp server
# returns TRUE if successful, FALSE otherwise
# 
# Author: brucehoff
###############################################################################

sftpRemoveDirectory<-function(host, username, password, remotepath) {
  resetState()
  result<-.C(C_sftp_rmdir,
    as.character(host), 
    as.character(username), 
    as.character(password), 
    as.character(remotepath),  
    as.integer(0))
  if (result[[5]]==0) return(TRUE) else return(FALSE)
}


