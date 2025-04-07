if [ $# -ne 1 ]
then
echo " Syntax Error "
exit 1
fi
num=$1
if [ $num -lt 2 ]
then
echo "$num is not a prime Number."
exit 0
fi
for ((i=2; i<=$((num/2)); i++))
do
if [ $((num % i)) -eq 0 ]
then
echo "$num is not a prime Number."
exit 0
fi
done
echo "$num is a Prime Number."







(base) ksb@ksb-H410M-S2-V2:~$ bash prime.sh 2
2 is a Prime Number.
(base) ksb@ksb-H410M-S2-V2:~$ bash prime.sh 4
4 is not a prime Number.

