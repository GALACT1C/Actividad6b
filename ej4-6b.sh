par=0
impar=0

for i in $(cat numeros.txt);do
    resto=$(($i%2))
    
    if[ $resto -eq 0 ]
    then
	echo $i >> par
	par=$((par+1))
    else
	echo $i >> impar
	impar=$((impar+1))
    fi
done

echo "Total pares:"
cat par
echo "Total impares:"
cat impar
rm par impar
