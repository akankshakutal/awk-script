#! /usr/bin/awk
BEGIN{
  FS="|"
}
{
  array[$2]
  largest=0
  coastline[NR]=$6*$4
  region[NR]=$2
}
END{
  for(i in array)
  {
    Total=0
     for(j=1;j<=NR;j++)
     {
       if(i==region[j])
         Total+=coastline[j]
      }
      if(largest<Total)
      {
        x=i
        largest=Total
      }
  }
    print x 
}
