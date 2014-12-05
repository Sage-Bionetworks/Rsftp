# sftpMakeDirectory -- create a directory on an sftp server
# returns TRUE if successful, FALSE otherwise
# 
# Author: brucehoff
###############################################################################

sftpMakeDirectory<-function(host, username, password, remotepath) {
  resetState()
  result<-.C("sftp_mkdir",
    as.character(host), 
    as.character(username), 
    as.character(password), 
    as.character(remotepath),  
    as.integer(0),
    PACKAGE="RSFTP")
  if (result[[5]]==0) return(TRUE) else return(FALSE)
}


