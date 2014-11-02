\name{sftpDeleteFile}
\alias{sftpDeleteFile}
\title{
sftpDeleteFile
}
\description{
Deletes a file from a remote ftp server.
}
\usage{
sftpDeleteFile(host, username, password, remotepath)
}
\details{
Deletes a file from a remote ftp server.
}
\value{
logical:  returns TRUE if successful, FALSE otherwise
}
\references{
http://www.chiark.greenend.org.uk/~sgtatham/putty/
}
\author{
Bruce Hoff <bruce.hoff@sagebase.org>
}

\seealso{
sftpUpload
sftpDownload
sftpDirectoryExists
sftpMakeDirectory
sftpRemoveDirectory
}
\examples{
\dontrun{
sftpDeleteFile("sftp.server.org", "username", "password", "/path/on/server/file.txt")
}
}

