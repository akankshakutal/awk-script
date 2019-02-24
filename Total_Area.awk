#! /usr/bin/awk -f

BEGIN{
  FS="|"
  total_area=0
}
{
  total_area=total_area+$4
}
END{
  print total_area
}
