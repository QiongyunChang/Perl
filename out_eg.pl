open ss,"<grade_sheet.txt";
@input=<ss>;  #read data from ss line by line to an array
close ss;
print  "@input\n"; # print on the screen

open outtest,">output_test.txt";
#print "@input";      #on screen
for(0..$#input){
	chomp $input[$_]; #強迫按照我們所規定的輸出
	print"$input[$_]\n";
	print outtest "@input";   #on file
}

close outtest;
