
 #delete the file already exists
unlink "outputfile.txt" ;
system("gfortran -o new  1.f90");
system("gfortran -o new2  2.f90");
system("new");
unlink "input2.txt" ;
system("rename outputfile.txt input2.txt ");

for($i=0; $i<100; $i++) {	
	system("new2");
	unlink "input2.txt" ;
	system("rename output2.txt input2.txt ");
}
