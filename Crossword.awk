#! /usr/bin/awk -f
BEGIN{
  count=1
  print "*** CROSSWORD ***"
  print "+---------------+"
  print "| F | A | R | I |"
  print "| A | F | G | H |"
  print "| S | E | I | N |"
  print "| P | L | T | O |"
  print "+---------------+"

  print "Enter your Name :"
}

(count==1) {
  name=$0
  print "Hey "$0 " would you like to play CROSSWORD ?"
  y_n=tolower(getline($0))
}

{
  word=tolower($0)
  if(y_n=="no") {
    print "\n OK. "
  } else {
      if(count==1) {
        print " \n WELCOME TO THE WORLD OF WORDS"
        print "\n ALL THE BEST....!"
        print "\n Enter the ANIMAL NAME which you can Guess from the table : "
        tolower(getline word)
      }
      if(word=="giraffe" || word=="lion" || word=="fish" || word=="pig" || word=="horse" || word=="tiger" ||         word=="rat"){
        print "\n You got the Right Animal Name "
        print "\n You are playing Nice"
        print "\n Enter Next Word :"
      } else  {
          print "\n Sorry...."
          print "\n Better Luck next time..."
          exit
      }
    count++
  }
}
