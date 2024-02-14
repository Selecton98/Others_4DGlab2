#!/bin/bash
sed -i "s/Z-IgD/Z-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-100000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanZ-naive/raw/100000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-100000chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/Z-naive/F-IgD/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-100000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanF-IgD/raw/100000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-100000chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/F-IgD/M-IgD/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-100000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanM-IgD/raw/100000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-100000chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/M-IgD/M-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-100000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanM-naive/raw/100000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-100000chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/M-naive/F-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-100000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanF-naive/raw/100000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-100000chr-miniMDS-human-3.R --max-ppsize=500000


