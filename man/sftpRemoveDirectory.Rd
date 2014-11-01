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
www.libssh2.org
}
\author{
Bruce Hoff <bruce.hoff@sagebase.org>
}
\note{
The underlying C code supports public key authentication but this version of Rssh2 supports only username+password authentication.
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
sftpDownload("sftp.server.org", "username", "password", "/path/to/source/remotefile.txt", "/dest/location/localfile.txt")
}
}

