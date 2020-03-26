cd ./example_linux_TT
rm *remove*txt
./remove_TT.sh > ./output_remove_linux_TT.txt 2>&1

cd ../example_linux_TC
rm *remove*txt
./remove_TC.sh > ./output_remove_linux_TC.txt 2>&1

cd ../example_linux_CT
rm *remove*txt
./remove_CT.sh > ./output_remove_linux_CT.txt 2>&1

cd ../example_linux_TB
rm *remove*txt
./remove_TB.sh > ./output_remove_linux_TB.txt 2>&1

cd ../example_linux_BT
rm *remove*txt
./remove_BT.sh > ./output_remove_linux_BT.txt 2>&1
