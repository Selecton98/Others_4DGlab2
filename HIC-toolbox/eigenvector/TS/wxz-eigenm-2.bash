
#!/bin/bash
nohup bash wxz-eigen-2.bash &
sed -i "s/H--naive/HM--IgD/g" wxz-eigen-2.bash
nohup bash wxz-eigen-2.bash &
sed -i "s/HM--IgD/HF--IgD/g"  wxz-eigen-2.bash
nohup bash wxz-eigen-2.bash &
sed -i "s/HF--IgD/H--IgD/g"  wxz-eigen-2.bash
nohup bash wxz-eigen-2.bash &
sed -i "s/H--IgD/HM--naive/g"  wxz-eigen-2.bash
nohup bash wxz-eigen-2.bash &
sed -i "s/HM--naive/HF--naive/g"  wxz-eigen-2.bash
nohup bash wxz-eigen-2.bash &