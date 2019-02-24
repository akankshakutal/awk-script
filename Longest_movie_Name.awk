#! /usr/bin/awk -f

BEGIN {
    FS="|"
    length_of_longest_title=0
    longest_movie=""
};
(length($1) == length_of_longest_title) {
  longest_movie=$1 "," longest_movie 
}
(length($1) > length_of_longest_title) {
  length_of_longest_title=length($1)
  longest_movie=$1
};
END {
  print longest_movie " " length_of_longest_title
};
