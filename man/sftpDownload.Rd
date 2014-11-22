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
    The path to the SFTP-hosted file, including the file name itself.
    }
    \item{localpath}{
    The path to the target location on the local file system, including the file name.
    }
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
sftpDownload("sftp.server.org", "username", "password", 
"/path/to/source/remotefile.txt", "/dest/location/localfile.txt")
}
}

