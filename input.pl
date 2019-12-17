#####............input from keyboard............

#print "Please type some words for test:\n";
#$input=<STDIN>; # standard input by the keyboard
#print "input: $input\n";

#####...............input from file.............
# the first way

#open ss,"<grade_sheet.txt";
#@input=<ss>;  #read data from ss line by line to an array
#close ss;
#print  "@input\n";

# the second way
#for(0..$#input){
#	chomp $input[$_]; #強迫按照我們所規定的輸出
#	print"$input[$_]\n";
#}

#$allpart = "";
#open ss,"<grade_sheet.txt";
#while($_=<ss>){$allpart.=$_;} 
#close ss;
#print $allpart;
#

@keep="";
open ss, "<grade_sheet.txt";
while(<ss>) {
	@temp =split;
	if ($temp[-1] <= 50){push (@keep,$_);}
}
close ss;
print @keep;

#####.............build-in-data....................
#$line="hello world!";
#print "$line\n";
