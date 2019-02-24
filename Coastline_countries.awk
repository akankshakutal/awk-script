#! /usr/bin/awk -f

BEGIN{
  FS="|"
  country=""
}
($6 == 0){
  country=$1
print country  
}
END{
}
