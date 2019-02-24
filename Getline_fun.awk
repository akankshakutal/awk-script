#! /usr/bin/awk -f

BEGIN{  
  print "Enter Number"
  getline $0 
  num=$0
  print "You Entered : " num 
}
