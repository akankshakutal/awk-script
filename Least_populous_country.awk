#! /usr/bin/awk -f

BEGIN{
  FS="|"
  least_population=0
  country=""
}
(NR==1){
  least_population=$3
}
(least_population>$3){
  least_population=$3
  country=$1
}
END{
  print country
}
