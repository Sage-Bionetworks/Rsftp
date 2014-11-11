# sftpDeleteFile -- removes a file from an sftp server
# returns TRUE if successful, FALSE otherwise
# 
# Author: brucehoff
###############################################################################

sftpDeleteFile<-function(host, username, password, remotepath) {
  resetState()
  result<-.C(C_sftp_rm,
    as.character(host), 
    as.character(username), 
    as.character(password), 
    as.character(remotepath),  
    as.integer(0))
  if (result[[5]]==0) return(TRUE) else return(FALSE)
}


