
#!/bin/bash
nohup bash wxz-eigen.bash &
sed -i "s/Z-naive/M-IgD/g" wxz-eigen.bash
nohup bash wxz-eigen.bash &
sed -i "s/M-IgD/F-IgD/g"  wxz-eigen.bash
nohup bash wxz-eigen.bash &
sed -i "s/F-IgD/Z-IgD/g"  wxz-eigen.bash
nohup bash wxz-eigen.bash &
sed -i "s/Z-IgD/M-naive/g"  wxz-eigen.bash
nohup bash wxz-eigen.bash &
sed -i "s/M-naive/F-naive/g"  wxz-eigen.bash
nohup bash wxz-eigen.bash &