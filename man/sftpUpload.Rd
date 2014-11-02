\name{sftpUpload}
\alias{sftpUpload}
\title{
sftpUpload
}
\description{
Uploads a file to an ftp server.
}
\usage{
sftpUpload(host, username, password, remotepath, localpath)
}
\details{
Uploads a file to an ftp server.  Will overwrite an existing file at the specified 'remotepath'.
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
sftpMakeDirectory
sftpRemoveDirectory
sftpDeleteFile
}
\examples{
\dontrun{
sftpUpload("sftp.server.org", "username", "password", "/path/to/dest/remotefile.txt", "/source/location/localfile.txt")

}
}

