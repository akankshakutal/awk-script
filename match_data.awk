#! /usr/bin/awk -f

BEGIN{
  FS=" "
}
($1==1){
  alphabetics=(substr($2,length($2)-3))
  numerics=(substr($2,1,length($2)-4))
  similar_part[alphabetics]=numerics
  next
}
($1==2){
  print similar_part[alphabetics]$2
}



