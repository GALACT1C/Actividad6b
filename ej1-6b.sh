if [ $# -ne 1 ]
then
    echo "Error. No hay ningún valor introducido"
    exit
fi

if [ $1 -lt 1 ]
then
    echo "Error. El valor debe ser mayor que 1"
    exit
fi

for i in $(cat nombres.txt);do
    mkdir $i
    cd $i
    
    for i in `seq 1 $1`;do
	mkdir personal${i}
    done
    cd..
done