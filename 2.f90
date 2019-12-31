Program main
integer letters
letters = 10
	open(10, file = 'input2.txt') 
	open(11, file = 'output2.txt')
    read(10,*)letters
    write(11,*)letters +1
    close(10)
    close(11)
 end Program 	
