sed -i 's/ELECTRONICS/\nELECTRONICS/g' temp2.txt
grep -v ELECTRONICS  temp2.txt > temp3.txt


sed -i 's/MA101(/ /g' temp3.txt
sed -i 's/PH100(/ /g' temp3.txt
sed -i 's/BE110(/ /g' temp3.txt
sed -i 's/BE10105(/ /g' temp3.txt
sed -i 's/BE103(/ /g' temp3.txt
sed -i 's/EE100(/ /g' temp3.txt
sed -i 's/PH110(/ /g' temp3.txt
sed -i 's/EE110(/ /g' temp3.txt
sed -i 's/CS110(/ /g' temp3.txt
sed -i 's/)/ /g' temp3.txt

sed -i 's/,//g' temp3.txt


sed -i 's/O/10/g' temp3.txt
sed -i 's/A+/9/g' temp3.txt
sed -i 's/A/8.5/g' temp3.txt
sed -i 's/B+/8/g' temp3.txt
sed -i 's/B/7/g' temp3.txt
sed -i 's/C/6/g' temp3.txt
sed -i 's/P/5/g' temp3.txt
sed -i 's/F/0/g' temp3.txt



