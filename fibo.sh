read -p "Enter the number: " num

echo "F1=1"
echo "F2=1"

f1=1
f2=1

for i in `seq 3 $num`
do
    ((f3=f1+f2))
    echo "F$i=$f3"    
    f1=$f2
    f2=$f3
done