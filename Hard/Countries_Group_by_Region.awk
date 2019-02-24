#! /usr/bin/awk
BEGIN{
  FS="|"
}
{
  array[$2]
  country[NR]=$1
  region[NR]=$2
}
END{
  for(i in array)
  {
     print i
     print "--------------"
     for(j=1;j<=NR;j++)
     {
       if(i==region[j])
       print country[j] 
      }
      print "\n"
    }
}
