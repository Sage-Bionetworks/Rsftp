# The underlying 'c' application has state that persists between calls
# and causes later calls to fail.  As a work-around we clear the state
# by reloading the c library.
# 
# Author: brucehoff
###############################################################################

resetState<-function() {
  library.dynam.unload(chname="Rssh2", libpath=system.file(package = "Rssh2"), verbose=FALSE)
  library.dynam(chname="Rssh2", package="Rssh2", lib.loc=.libPaths(), verbose=FALSE)
}