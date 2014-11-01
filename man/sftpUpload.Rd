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
www.libssh2.org
}
\author{
Bruce Hoff <bruce.hoff@sagebase.org>
}
\note{
The underlying C code supports public key authentication but this version of Rssh2 supports only username+password authentication.
}

\seealso{
sftpDownload
}
\examples{
\dontrun{
sftpUpload("sftp.server.org", "username", "password", "/path/to/dest/remotefile.txt", "/source/location/localfile.txt")

}
}

