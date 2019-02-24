#! /usr/bin/awk -f

BEGIN{
  FS="|"
  largest_area=0
  country=""
}
($4>largest_area){
  largest_area=$4
  country=$1
}
END{
  print country
  
}
