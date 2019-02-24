#! /usr/bin/awk -f

BEGIN{
  FS="|"
  highest_population=0
  country=""
}
($3>highest_population){
  highest_population=$3
}
(highest_population ==$3){
  country=$1
}
END{
  print country
}
