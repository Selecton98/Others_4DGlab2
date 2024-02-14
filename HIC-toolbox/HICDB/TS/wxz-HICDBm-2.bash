
#!/bin/bash
cd  /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/H--IgD/raw/10000
Rscript /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/wxz-HICDB-2.R --max-ppsize=500000
sed -i "s/H--IgD/H--naive/g"  /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/wxz-HICDB-2.R
cd  /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/H--naive/raw/10000
Rscript /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/wxz-HICDB-2.R --max-ppsize=500000
sed -i "s/H--naive/HF--IgD/g"  /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/wxz-HICDB-2.R
cd  /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/HF--IgD/raw/10000
Rscript /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/wxz-HICDB-2.R --max-ppsize=500000
sed -i "s/HF--IgD/HF--naive/g"  /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/wxz-HICDB-2.R
cd  /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/HF--naive/raw/10000
Rscript /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/wxz-HICDB-2.R --max-ppsize=500000
sed -i "s/HF--naive/HM--IgD/g"  /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/wxz-HICDB-2.R
cd  /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/HM--IgD/raw/10000
Rscript /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/wxz-HICDB-2.R --max-ppsize=500000
sed -i "s/HM--IgD/HM--naive/g"  /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/wxz-HICDB-2.R
cd  /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/HM--naive/raw/10000
Rscript /disk1/zhoujiaqi/0715HIC/Clean-result-3/hic_results/matrix/wxz-HICDB-2.R --max-ppsize=500000