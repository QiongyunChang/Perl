### Get the information you want first!
open ss,"<grade_sheet-four.txt";
@input=<ss>;
close ss;

# get the header !!
#print "Before trim: $input[0]\n";
#$input[0] =~s/^\s+//g;#replace operation # \s -> space  s+

for(0..$#input){
	$input[$_] =~s/^\s+//g; ####
}

#input [0] 
#print "After  trim: $input[0]\n";
#

@header = split(/\s+/,$input[0]); # array 
#print "@header \n";  
$header_num = @header; #***check this if you don't use "=~s/^\s+//g" to remove the beginning empty
print "**** The number of header: $header_num\n";
$i=0;
foreach (@header){	
	print "$i term:  $_\n";
	$i=$i+1;
}
#

### open files to write data into 
## $i=1, becuse we want to open files named by the courses
#for ($i=1;$i<=$header_num;$i++) { 
for $i(1..$header_num){
	$temp = $header[$i];
	open $temp,">$temp".".txt"; # the first "." is the combination operator of Perl		
		for $j(0..$#input){
		#for($j=0;$j<=$#input;$j++){
			chomp $input[$j] ;#刪除換行符號
			@outputfile =split(/\s+/,$input[$j]);		
			print $temp "$outputfile[0]  $outputfile[$i] \n" ;
		}	
close ss;
}
#
### Now let's write data into different files, we will use them in the future.
#
###*********** by yourself
#
####### close files
#
for ($i=1;$i<=$header_num;$i++) { 
	$temp = $header[$i];	
	close $temp; 
}
