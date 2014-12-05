# The underlying 'c' application has state that persists between calls
# and causes later calls to fail.  As a work-around we clear the state
# by reloading the c library.
# 
# Author: brucehoff
###############################################################################

resetState<-function() {
  packageName<-"RSFTP"
  library.dynam.unload(chname=packageName, libpath=system.file(package = packageName), verbose=FALSE)
  library.dynam(chname=packageName, package=packageName, lib.loc=.libPaths(), verbose=FALSE)
}