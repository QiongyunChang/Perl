%hash=( x1 =>"Hilary",
		x2 =>"1999",
		x3 =>"MIS","x1",222,"x5",160,"x3","abc");

#hash把重複的key濾掉		
print "This is $hash{x1}\n";
#print "This is $hash{'x1'}\n";


#foreach $temp (reverse sort keys %hash){
#	print "key is $temp\n";	# no sequence
#	print "$hash{$temp}\n"; #$x1~$x4
#}
foreach $temp ( sort keys %hash){
	print "key is $temp\n";	# no sequence
	print "$hash{$temp}\n"; #$x1~$x4
}
