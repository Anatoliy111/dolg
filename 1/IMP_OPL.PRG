parameters m.path
private handle
_ReFox=(9876543210)

set deleted on
set exclusive off

*susp
*sele 0
*use (m.path+'opltmp.dbf')
  
sele opl
if used('opl')

 * pack
  appe from m.path+'opltmp.dbf' 
*  erase m.path+'subs\slgotree.dbf'
endif
use

quit



