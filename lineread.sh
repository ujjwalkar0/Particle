i=0
while [ "$fun1" != "!quit" ]
do
    read -p "[Line[$i]] : " fun1 fun2 fun3 fun4 fun5 fun6 fun7 fun8
    i=`expr $i + 1`

    source ~/Particle/onread.sh
    
done