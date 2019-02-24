# /usr/bin/awk -f

BEGIN{
  score=0
  name=""
  flag=1
  count=0
  do {
    count++
    flag= getline < "clues.txt"
    if(flag==1) questions[count]=$0
    flag=getline < "clues.txt"
    if(flag==1) answers[count]=$0
  }while(flag==1)
  print count
}

(score==0){
  print "**** WORD GUESSING **** \n"
  print "Welcome to the world of word....\n "
  print "Enter your Name :"
  getline name
  print "\nHello "name " \n"
  print "Are you ready to play ?"
  getline y_n
}

{
  if(y_n == "no") {
    print "OK"
    exit
  }
  srand()
  ans=""
  Num=int(rand()*15)
  print  "Question : "questions[Num] 
  getline ans

  if(tolower(ans)==answers[Num]){
    score++
    print "You got the right answer.\n"
    print "Well played.\n "
    print "Press ENTER for next Question.\n"
  } else {
  print "You got the wrong answer \n"
  print "Right answer is " answers[Num] "\n"
  print "Your scoree is " score
  exit
  }
}
