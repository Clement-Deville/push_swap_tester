#!/bin/bash

#define colors:

RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'

#endif

if [ $# -gt 0 ];
then
	iteration=$1
	size=$2
	limit=$3
else
	echo -n "Choose the number of iteration of the test: "
	read iteration
	echo -n "Choose the size of list of values: "
	read size
	echo -n "Choose the limit of actions allowed: "
	read limit
fi
for i in $(seq $iteration)
do
	ARG=$(python3 generate_random.py $size)
	OUTPUT=$(../push_swap $ARG | tee solution.txt | wc -l)
	check=$(cat solution.txt | ./checker $ARG)
	if [ "$OUTPUT" -gt "$limit" ];
	then
		echo -e "${RED}!!!!!!!     This test reach the limit of action allowed: $OUTPUT      !!!!!!!"
		echo -e "You can check the argument in trace.txt${NC}"
		echo $ARG > trace.txt
		exit
	fi
	if [ "$check" = "KO" ];
	then
		echo -e "${RED}!!!!!!!     This test has the wrong solution: $i     !!!!!!!${NC}"
		exit
	fi
	if [ "$check" = "error" ];
	then
		echo -e "${RED}!!!!!!!     This test got an error output: $i     !!!!!!!${NC}"
		exit
	fi
	echo -ne "${GREEN}Test(s) completed [$i/$iteration]                      ${NC}\r"
done
echo -ne "\n"
echo "All tests were valid!"

# ARG=$(python3 generate_random.py)
# OUTPUT="$(./push_swap $ARG | wc -l)"
# echo $OUTPUT
