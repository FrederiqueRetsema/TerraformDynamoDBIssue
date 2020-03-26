cd ./example_linux_TT
rm *remove*debug*txt
./remove_TT.sh > ./output_remove_debug_linux_TT.txt 2>&1

cd ../example_linux_TC
rm *remove*debug*txt
./remove_TC.sh > ./output_remove_debug_linux_TC.txt 2>&1

cd ../example_linux_CT
rm *remove*debug*txt
./remove_CT.sh > ./output_remove_debug_linux_CT.txt 2>&1

cd ../example_linux_TB
rm *remove*debug*txt
./remove_TB.sh > ./output_remove_debug_linux_TB.txt 2>&1

cd ../example_linux_BT
rm *remove*debug*txt
./remove_BT.sh > ./output_remove_debug_linux_BT.txt 2>&1
