#! /bin/awk

BEGIN{
  FS="|"
  Mortality=0
}
 ($9 >20000){
   if(mortality < $8){
      mortality=$8 
      country=$1
    }


}
END{
  print country ":" mortality
}
