# An integration test for the Rsftp library
# 
# Author: brucehoff
###############################################################################
library(Rsftp)
library(tools)


runIntegrationTest<-function(sftpHost, sftpUserName, sftpPassword) {
  message("\n===============\nBeginning Rsftp integration test:\n===============\n")
  runOnce(sftpHost, sftpUserName, sftpPassword)
  message("\n===============\nRsftp integration test completed successfully.\n===============\n")
}

runOnce<-function(sftpHost, sftpUserName, sftpPassword) {
  
  filePath<- tempfile()
  connection<-file(filePath)
  # add some randomness to the content, to make sure we are only dealing with our own file
  numberOfNumbersToConcatenate<-10000
  writeChar(sprintf("this is a test %s",paste(sample(100000, numberOfNumbersToConcatenate), collapse="_")), connection, eos=NULL)
  close(connection)
  originalMD5<-tools::md5sum(filePath)
  
  remoteDir<-sprintf("/rClientIntegrationTest/testdir%s", sample(100000, 1))
  
  dirExists<-sftpDirectoryExists(sftpHost, sftpUserName, sftpPassword, remoteDir)
  if (dirExists) stop(sprintf("Did not expect directory to exist %s", remoteDir))
  
  success<-sftpMakeDirectory(sftpHost, sftpUserName, sftpPassword, remoteDir)
  dirExists<-sftpDirectoryExists(sftpHost, sftpUserName, sftpPassword, remoteDir)
  if (!dirExists) stop(sprintf("Failed to create %s", remoteDir))
  
  remotePath<-file.path(remoteDir, "test.txt")
  
  # upload is idempotent.  Let's do it twice
  for (i in 1:2) {
    success<-sftpUpload(sftpHost, sftpUserName, sftpPassword, remotePath, filePath)
    if(!success) stop("Unable to perform sftp file upload")
  }
  
  downloadPath<-tempfile()
  # download is idempotent.  Let's do it twice
  for (i in 1:2) {
    success<-sftpDownload(sftpHost, sftpUserName, sftpPassword, remotePath, downloadPath)
    if(!success) stop("Unable to perform sftp file download")
  }
  if (originalMD5 != tools::md5sum(downloadPath)) stop("sftp upload/download round trip failed to retrieve the uploaded file")
  
  success<-sftpDeleteFile(sftpHost, sftpUserName, sftpPassword, remotePath)
  if(!success) stop("Unable to delete remote file")
  success<-sftpRemoveDirectory(sftpHost, sftpUserName, sftpPassword, remoteDir)
  if(!success) stop("Unable to delete remote directory")
  dirExists<-sftpDirectoryExists(sftpHost, sftpUserName, sftpPassword, remoteDir)
}
