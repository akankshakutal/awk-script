#! /usr/bin/awk -f
BEGIN{
  i=1
}

{
  line[i]=$0
  i++
}

END{
  len=length(line)
  for(i=len; i>0; i--){
    split(line[i],numbers," ")
    for(j=1; j<=length(numbers); j++){
      sum[j]+=numbers[j]
    }
    for(k=1; k<length(numbers);k++){
      if(sum[k]<sum[k+1]){
          sum[k]=sum[k+1]
      }
    }
  }
  print sum[1]
}
