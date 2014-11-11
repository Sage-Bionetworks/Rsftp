# sftpDirectoryExists -- checks whether a directory exists on an sftp server
# returns TRUE if successful, FALSE otherwise
# 
# Author: brucehoff
###############################################################################

sftpDirectoryExists<-function(host, username, password, remotepath) {
  resetState()
  result<-.C(C_sftp_isdir,
    as.character(host), 
    as.character(username), 
    as.character(password), 
    as.character(remotepath),  
    as.integer(0))
  if (result[[5]]==1) return(TRUE) else return(FALSE)
}


