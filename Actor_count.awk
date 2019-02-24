#! usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
}
{
  split($7,a,", ")
  for (i=1; i<=length(a); i++){
    actors[a[i]]= 1
  }
}
END{
  for (actor in actors) {
    count++
  }
  print count
}

