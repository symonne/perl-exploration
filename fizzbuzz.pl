#!perl

$i = 1;

while($i<101){
  print "$i";
  if($i%3==0){
    print "fizz";}
  if($i%5==0){
    print"buzz";}
  $i++;}
print "\nend program\n";