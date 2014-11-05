\name{sftpMakeDirectory}
\alias{sftpMakeDirectory}
\title{
sftpMakeDirectory
}
\description{
Creates a new directory on a remote ftp server.
}
\usage{
sftpMakeDirectory(host, username, password, remotepath)
}
\details{
Creates a new directory on a remote ftp server.
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
sftpRemoveDirectory
sftpDeleteFile
}
\examples{
\dontrun{
sftpMakeDirectory("sftp.server.org", "username", "password", "/path/on/server")
}
}

