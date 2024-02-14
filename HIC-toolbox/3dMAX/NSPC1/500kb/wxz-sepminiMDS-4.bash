#!/bin/bash
cd /data02/zhoujiaqi/hic_NSPC1/model/2-1/40000
Rscript /data02/zhoujiaqi/hic_NSPC1/model/wxz-40000chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/2-1/2-2/g"  /data02/zhoujiaqi/hic_NSPC1/model/wxz-40000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/hic_NSPC1/model/2-2/40000
Rscript /data02/zhoujiaqi/hic_NSPC1/model/wxz-40000chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/2-2/2-3/g"  /data02/zhoujiaqi/hic_NSPC1/model/wxz-40000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/hic_NSPC1/model/2-3/40000
Rscript /data02/zhoujiaqi/hic_NSPC1/model/wxz-40000chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/2-3/2-4/g"  /data02/zhoujiaqi/hic_NSPC1/model/wxz-40000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/hic_NSPC1/model/2-4/40000
Rscript /data02/zhoujiaqi/hic_NSPC1/model/wxz-40000chr-miniMDS-human-3.R --max-ppsize=500000



