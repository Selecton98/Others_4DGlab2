#!/bin/bash
#Z-naive not required
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanM-IgD/raw/5000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5chr-miniMDS-human-3.R --max-ppsize=500000
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanM-IgD/raw/40000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-40chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/M-IgD/F-IgD/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5chr-miniMDS-human-3.R
sed -i "s/M-IgD/F-IgD/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-40chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanF-IgD/raw/5000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5chr-miniMDS-human-3.R --max-ppsize=500000
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanF-IgD/raw/40000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-40chr-miniMDS-human-3.R --max-ppsize=500000


sed -i "s/F-IgD/Z-IgD/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5chr-miniMDS-human-3.R
sed -i "s/F-IgD/Z-IgD/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-40chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanZ-IgD/raw/5000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5chr-miniMDS-human-3.R --max-ppsize=500000
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanZ-IgD/raw/40000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-40chr-miniMDS-human-3.R --max-ppsize=500000


sed -i "s/Z-IgD/M-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5chr-miniMDS-human-3.R
sed -i "s/Z-IgD/M-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-40chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanM-naive/raw/5000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5chr-miniMDS-human-3.R --max-ppsize=500000
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanM-naive/raw/40000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-40chr-miniMDS-human-3.R --max-ppsize=500000

sed -i "s/M-naive/F-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5chr-miniMDS-human-3.R
sed -i "s/M-naive/F-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-40chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanF-naive/raw/5000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5chr-miniMDS-human-3.R --max-ppsize=500000
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanF-naive/raw/40000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-40chr-miniMDS-human-3.R --max-ppsize=500000

######################

sed -i "s/F-naive/Z-IgD/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5chr-miniMDS-human-3.R
sed -i "s/F-naive/Z-IgD/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-40chr-miniMDS-human-3.R
sed -i "s/M-IgD/Z-IgD/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5000chr-miniMDS-human-3.R
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanZ-IgD/raw/5000 
nohup Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5chr-miniMDS-human-3.R --max-ppsize=500000 &
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanZ-IgD/raw/40000 
nohup Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-40chr-miniMDS-human-3.R --max-ppsize=500000 &
cd /data02/zhoujiaqi/TS/HICPROCNM/model/cleanZ-IgD/raw/500000
nohup Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-5000chr-miniMDS-human-3.R --max-ppsize=500000 &

