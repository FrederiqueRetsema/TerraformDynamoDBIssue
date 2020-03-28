export TF_LOG=TRACE
cd ./example_linux_TT
rm *test*debug*txt
./test_TT.sh > ./output_test_debug_linux_TT.txt 2>&1

cd ../example_linux_TC
rm *test*debug*txt
./test_TC.sh > ./output_test_debug_linux_TC.txt 2>&1

cd ../example_linux_CT
rm *test*debug*txt
./test_CT.sh > ./output_test_debug_linux_CT.txt 2>&1

cd ../example_linux_TB
rm *test*debug*txt
./test_TB.sh > ./output_test_debug_linux_TB.txt 2>&1

cd ../example_linux_BT
rm *test*debug*txt
./test_BT.sh > ./output_test_debug_linux_BT.txt 2>&1
