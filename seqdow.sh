
k=0
 for i in  `cat $1` ; 
 do youtube-dl $i ; echo ; echo ; 
	 k=`echo $k + 1 |bc -l` ; 
	 echo $k ; 
	 echo ;echo ;
 done
