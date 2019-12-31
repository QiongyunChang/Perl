Program main
integer letters
letters = 10
	open(10, file = 'inputfile.txt') 
	open(11, file = 'outputfile.txt')
    read(10,*)letters
    write(11,*)letters +1
    close(10)
    close(11)
 end Program 	
