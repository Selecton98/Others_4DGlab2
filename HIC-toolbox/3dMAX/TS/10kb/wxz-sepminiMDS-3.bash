#!/bin/bash
sed -i "s/Z-IgD/Z-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-10000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanZ-naive/raw/10000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-10000chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/Z-naive/F-IgD/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-10000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanF-IgD/raw/10000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-10000chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/F-IgD/M-IgD/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-10000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanM-IgD/raw/10000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-10000chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/M-IgD/M-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-10000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanM-naive/raw/10000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-10000chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/M-naive/F-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-10000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanF-naive/raw/10000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-10000chr-miniMDS-human-3.R --max-ppsize=500000


