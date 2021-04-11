make all: basecase case1 case2 case3 case4

basecase:
	gcc -Wall -O0 -o whetstoneBaseCase whetstone.c -lm

case1:
	gcc -Wall -fschedule-fusion -O1 -o whetstoneOne whetstone.c -lm

case2:
	gcc -Wall -funroll-loops -O1 -o whetstoneTwo whetstone.c -lm

case3:
	gcc -Wall -fpeel-loops -O1 -o whetstoneThree whetstone.c -lm

case4:
	gcc -Wall -O3 -o whetstoneFour whetstone.c -lm
