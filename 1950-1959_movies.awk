#! usr/bin/awk -f

BEGIN{
  FS="|"
}
($2 ~ /195/){
  split($6,a,", ")
  for (i=1; i<=length(a); i++){
    directors[a[i]]= 1
  }
}
END{
  for (director in directors) {
    print director
  }
}

