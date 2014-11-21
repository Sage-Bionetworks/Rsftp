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
    The path to the directory of interest.
    }
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

