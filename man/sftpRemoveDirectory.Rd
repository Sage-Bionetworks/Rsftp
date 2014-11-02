\name{sftpRemoveDirectory}
\alias{sftpRemoveDirectory}
\title{
sftpRemoveDirectory
}
\description{
Removes a directory from a remote ftp server.
}
\usage{
sftpRemoveDirectory(host, username, password, remotepath)
}
\details{
Removes a directory from a remote ftp server.
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
}
\examples{
\dontrun{
sftpDownload("sftp.server.org", "username", "password", "/path/on/server")
}
}

