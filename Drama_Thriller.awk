#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0  
}
($5 ~"Drama" && $5 ~"Thriller"){
  count++
}
END{
    print count
}
