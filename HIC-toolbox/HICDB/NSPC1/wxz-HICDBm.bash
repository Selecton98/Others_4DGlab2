
#!/bin/bash
cd  /data02/zhoujiaqi/hic_NSPC1/Cleandata/2-1/Clean-result/hic_results/matrix/2-1/raw/40000
Rscript /data02/zhoujiaqi/hic_NSPC1/wxz-HICDB.R

sed -i "s/2-1/2-2/g" /data02/zhoujiaqi/hic_NSPC1/wxz-HICDB.R
cd  /data02/zhoujiaqi/hic_NSPC1/Cleandata/2-2/Clean-result/hic_results/matrix/2-2/raw/40000
Rscript /data02/zhoujiaqi/hic_NSPC1/wxz-HICDB.R

sed -i "s/2-2/2-3/g" /data02/zhoujiaqi/hic_NSPC1/wxz-HICDB.R
cd  /data02/zhoujiaqi/hic_NSPC1/Cleandata/2-3/Clean-result/hic_results/matrix/2-3/raw/40000
Rscript /data02/zhoujiaqi/hic_NSPC1/wxz-HICDB.R

sed -i "s/2-3/2-4/g" /data02/zhoujiaqi/hic_NSPC1/wxz-HICDB.R
cd  /data02/zhoujiaqi/hic_NSPC1/Cleandata/2-4/Clean-result/hic_results/matrix/2-4/raw/40000
Rscript /data02/zhoujiaqi/hic_NSPC1/wxz-HICDB.R