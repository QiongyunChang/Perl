open ss,"< data.dat";
@input=<ss>;
close ss;
$max = 0 ;
#for $i(0..$#input){
#	if ($input[$i] > $max){
#		$max = $input[$i];
#	}
#} print "$max \n";
$temp = 0;
for $i(0..$#input){
	for $j(0..$#input){
		if ($input[$i] > $input[$j]){
			$temp = $input[$i];
			$input[$i]  =$input[$j] ;
			$input[$j]  =$temp ;			
		}
	print "$input[$i]";
	}
} 

