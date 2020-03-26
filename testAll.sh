cd ./example_linux_TT
rm *test*txt
./test_TT.sh > ./output_test_linux_TT.txt 2>&1

cd ../example_linux_TC
rm *test*txt
./test_TC.sh > ./output_test_linux_TC.txt 2>&1

cd ../example_linux_CT
rm *test*txt
./test_CT.sh > ./output_test_linux_CT.txt 2>&1

cd ../example_linux_TB
rm *test*txt
./test_TB.sh > ./output_test_linux_TB.txt 2>&1

cd ../example_linux_BT
rm *test*txt
./test_BT.sh > ./output_test_linux_BT.txt 2>&1
