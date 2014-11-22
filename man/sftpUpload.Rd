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
\arguments{
    \item{host}{
    The name of the remote sftp host.
    }
    \item{username}{
    The user name with which to log in to the remote sftp host.
    }
    \item{password}{
    The password with which to log in to the remote sftp host.
    }
    \item{remotepath}{
    The target path on the server, including the file name.
    }
    \item{localpath}{
    The path to the file on the local file system, including the name of the file itself.
    }
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
sftpUpload("sftp.server.org", "username", "password", 
"/path/to/dest/remotefile.txt", "/source/location/localfile.txt")

}
}

