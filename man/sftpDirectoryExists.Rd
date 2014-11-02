\name{sftpDirectoryExists}
\alias{sftpDirectoryExists}
\title{
sftpDirectoryExists
}
\description{
Checks the existence of a directory on a remote ftp server.
}
\usage{
sftpDirectoryExists(host, username, password, remotepath)
}
\details{
Checks the existence of a directory on a remote ftp server.
}
\value{
logical: returns TRUE if the directory exists, FALSE otherwise
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
}
\examples{
\dontrun{
sftpDownload("sftp.server.org", "username", "password", "/path/on/server")
}
}

