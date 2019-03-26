lastroute=`pwd`
route=$lastroute/$1
cd $1
actualroute=`pwd`

contador=0

if [ $route = $actualroute ];then
    
    for i in `ls -l | grep .txt`;do
	rm $i
	contador `expr $contador+1`
    done

    echo "Ficheros borrados: $contador"
else
    "No existe el directorio"
fi