args=("$@")
#input="int i=56454654654654688654544654679544455;"
#i=0
#function="noanyfun"
file=${args[0]}.c
if [ -e $file ]
then
	echo "File name already exist"
else
    touch $file
    source ~/Particle/header.sh
    source ~/Particle/lineread.sh
fi