contador=1
max=`cat listado.txt | wc -l`
contW=0
contL=0

while [ $contador -le $max ];do
    linea=`cat listado.txt | head -${contador}  | tail -1`
    sistema=`echo $linea | awk '{print $2}'`
    valor=`echo $linea | awk '{print $3}'`

    if [ $sistema = "Linux" ]; then
	contL=$((contL+1))
	procL=$((procL+valor))
    elif [ $sistema = "Windows" ];then
	contW=$((contW+1))
	procW=$((procW+valor))
    fi
    contador=$((contador+1))
done

echo "Windows ----> $procW $contW"
echo "Linux ----> $procL $contL"