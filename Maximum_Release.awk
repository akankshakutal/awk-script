#! /usr/bin/awk -f
BEGIN{
  FS="|"
  count=0
};
{
  a[$2]++;
};
END{
  for(i in a){
    if(a[i]>count){
      count=a[i];
    }
  }
  for(i in a){
    if(count==a[i]){
      print i":"count;
    }
  } 
}; 

