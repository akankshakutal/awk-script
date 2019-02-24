#! bin/awk

BEGIN{
  FS="|"
}
{
if($5 < 100) {
  less=less "\n" $1
}
else if( $5<300){
  middle=middle "\n" $1
}
else{
  higher=higher "\n" $1
}
}
END{
  printf "Following are the Countries which has Population Density less than 100 :\n"
  printf less 
 printf "\n Following are the Countries which has Population Density more  than 100 but less than 300 :\n"
  printf  middle
 printf "\n Following are the Countries which has Population Density more than 300 :\n"
  printf  higher
}
