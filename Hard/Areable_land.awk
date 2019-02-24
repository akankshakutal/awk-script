#! /usr/bin/awk
BEGIN{
  FS="|"
}
{
  areable[NR]=($12*$4)/100
  total_area+=$4
  total_areable+=areable[NR]
}
END{
    percentage=(total_areable/total_area)*100
    print percentage
}
