#! /usr/bin/awk -f

BEGIN{
  FS="|"
  Movie=""
}
($6 ~ "Martin Scorsese" && $7 ~ "Leonardo DiCaprio"){
  Movie=Movie "\n" $1
}
END{
  print Movie
}
