#!perl

print "Hello esteemed user! What is your name?\n";
$name = <STDIN>;
chomp $name;

print "$name would you like to play a guessing game? (yes/no)\n";
$start = <STDIN>;
chomp $start;
if(start==yes){
  $rand = int(rand(11));
  $i = 1;
  @guesses = ();
  $win=0;
  print "\nThis is a guessing game, try to guess the number I'm thinking of between 1 and 10! You have seven chances\n";
  while($i<8&&$win!=1){
    print "\nOkay $name, what's your guess?";
    $guess = <STDIN>;
    chomp $guess;
    push(@guesses, $guess);
    if($guess!=$rand){
      print "\nSorry, $guess is not the right number!\n";
      $i++;}
    else{
      print "\nYou guessed the right number!\nCongratulations $name!\n";
      $win=1;}}
  if ($win==1){
    print "\n$name, you used $i turns to get the right number.\nYou guessed @guesses before you got $rand\n";}
  else{
    print "\nSorry $name, you lost the guessing game. \n You guessed @guesses\nThe right number was $rand\n";}
}

print "\nend program\n";