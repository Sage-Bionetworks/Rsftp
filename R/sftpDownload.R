# sftpDownload -- download a file from an sftp server
# returns TRUE if successful, FALSE otherwise
# 
# Author: brucehoff
###############################################################################

sftpDownload<-function(host, username, password, remotepath, localpath) {
  resetState()
  result<-.C(C_sftp_download,
    as.character(host), 
    as.character(username), 
    as.character(password), 
    as.character(remotepath), 
    as.character(localpath), 
    as.integer(0))
  if (result[[6]]==0) return(TRUE) else return(FALSE)
}


