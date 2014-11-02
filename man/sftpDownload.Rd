\name{sftpDownload}
\alias{sftpDownload}
\title{
sftpDownload
}
\description{
Downloads a file from an ftp server.
}
\usage{
sftpDownload(host, username, password, remotepath, localpath)
}
\details{
Downloads a file from an ftp server.  Will overwrite an existing file at the specified 'localpath'.
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
sftpDirectoryExists
sftpMakeDirectory
sftpRemoveDirectory
sftpDeleteFile
}
\examples{
\dontrun{
sftpDownload("sftp.server.org", "username", "password", "/path/to/source/remotefile.txt", "/dest/location/localfile.txt")
}
}

