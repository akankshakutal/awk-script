#! /usr/bin/awk
BEGIN{
  FS="|"
}
{
  array[$2]
  Literacy[NR]=$10
  region[NR]=$2
  population[NR]=$3
}
END{
  for(i in array)
  {
     total=0
     total_population=0
     percentage=0
     print i
     print "--------------"
     for(j=1;j<=NR;j++)
     {
       if(i==region[j]){
        number=(Literacy[j]*population[j])/100
        total=total+number 
        total_population=(total_population+population[j])
      }
    }
        percentage=(total*100)/total_population

      print percentage
      
      print "\n"
    }
}
