#! /usr/bin/awk -f

BEGIN{
  FS="|"
  smallest_area=0
  country=""
}
(NR==1){
  smallest_area=$4
}
(smallest_area>$4){
  smallest_area=$4
  country=$1
}
END{
  print country
}
