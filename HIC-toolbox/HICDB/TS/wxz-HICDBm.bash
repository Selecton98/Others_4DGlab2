
#!/bin/bash
cd  /data02/zhoujiaqi/TS/HICPROCNM/model/cleanF-IgD/raw/10000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-HICDB.R --max-ppsize=500000
sed -i "s/F-IgD/M-IgD/g" /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-HICDB.R
cd  /data02/zhoujiaqi/TS/HICPROCNM/model/cleanM-IgD/raw/10000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-HICDB.R --max-ppsize=500000
sed -i "s/M-IgD/Z-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-HICDB.R
cd  /data02/zhoujiaqi/TS/HICPROCNM/model/cleanZ-naive/raw/10000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-HICDB.R --max-ppsize=500000
sed -i "s/Z-naive/Z-IgD/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-HICDB.R
cd  /data02/zhoujiaqi/TS/HICPROCNM/model/cleanZ-IgD/raw/10000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-HICDB.R --max-ppsize=500000
sed -i "s/Z-IgD/M-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-HICDB.R
cd  /data02/zhoujiaqi/TS/HICPROCNM/model/cleanM-naive/raw/10000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-HICDB.R --max-ppsize=500000
sed -i "s/M-naive/F-naive/g"  /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-HICDB.R
cd  /data02/zhoujiaqi/TS/HICPROCNM/model/cleanF-naive/raw/10000
Rscript /data02/zhoujiaqi/TS/HICPROCNM/model/wxz-HICDB.R --max-ppsize=500000