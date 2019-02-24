#! /usr/bin/awk -f
BEGIN{
  srand()
  print "Enter number"
}
{
  ans=$0
  num=int(rand()*5)
  while(ans== num){
    print "You are right"
    exit
  }
  print "You got wrong number"
  print "Enter Number"

}
