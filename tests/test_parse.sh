echo -e "\e[39m########TESING GRAMATIC PARSER########"
echo -e "\e[39m"

################################# GOOD #####################################
let COUNT=0
let PASSED=0
let FAILED=0

echo -e "\e[39m########TESING GOOD########"
echo -e "\e[39m"

for i in $(ls ./tests/good/*.lat)
do
	echo -e "\e[39mTesting $i"
	let COUNT++

	TEST_NAME=$(echo $i | cut -c18-23)
	./grama/TestLatte $i &>/dev/null

	if [[ $? -eq 0 ]] 
	then
		echo -e "\e[32mPASSED"
		let PASSED++
	else
		echo -e "\e[31mFAILED"
		let FAILED++
	fi
done

echo -e "\e[32mPassed $PASSED/$COUNT"
echo -e "\e[31mFailed $FAILED/$COUNT"
echo -e "\e[39m"
echo -e "\e[39m"

################################# BAD #####################################
let COUNT=0
let PASSED=0
let FAILED=0

echo -e "\e[39m########TESING BAD########"
echo -e "\e[39m"

for i in $(ls ./tests/bad/*.lat)
do
	echo -e "\e[39mTesting $i"
	let COUNT++

	TEST_NAME=$(echo $i | cut -c18-23)
	./grama/TestLatte $i &>/dev/null

	if [[ $? -eq 1 ]] 
	then
		echo -e "\e[32mPASSED"
		let PASSED++
	else
		echo -e "\e[31mFAILED"
		let FAILED++
	fi
done

echo -e "\e[32mPassed $PASSED/$COUNT"
echo -e "\e[31mFailed $FAILED/$COUNT"
echo -e "\e[39m"
echo -e "\e[39m"

################################# GOOD #####################################
let COUNT=0
let PASSED=0
let FAILED=0

echo -e "\e[39m########TESING EXTENSIONS########"
echo -e "\e[39m"

for i in $(ls ./tests/extensions/*/*.lat)
do
	echo -e "\e[39mTesting $i"
	let COUNT++

	TEST_NAME=$(echo $i | cut -c18-23)
	./grama/TestLatte $i &>/dev/null

	if [[ $? -eq 0 ]] 
	then
		echo -e "\e[32mPASSED"
		let PASSED++
	else
		echo -e "\e[31mFAILED"
		let FAILED++
	fi
done

echo -e "\e[32mPassed $PASSED/$COUNT"
echo -e "\e[31mFailed $FAILED/$COUNT"
echo -e "\e[39m"
echo -e "\e[39m"
