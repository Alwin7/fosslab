pdftotext S1.pdf S1.txt
tr -d  '\n' < S1.txt > s1.txt
sed -i 's/MDL16CS/\nMDL16CS/g' s1.txt 
sed -i 's/ELECTRONICS/\nELECTRONICS/g' s1.txt
grep  MDL16CS s1.txt > temp1.txt


sed -i 's/MA101(/ /g' temp1.txt
sed -i 's/PH100(/ /g' temp1.txt
sed -i 's/BE110(/ /g' temp1.txt
sed -i 's/BE10105(/ /g' temp1.txt
sed -i 's/BE103(/ /g' temp1.txt
sed -i 's/EE100(/ /g' temp1.txt
sed -i 's/PH110(/ /g' temp1.txt
sed -i 's/EE110(/ /g' temp1.txt
sed -i 's/CS110(/ /g' temp1.txt

sed -i 's/,//g' temp1.txt


sed -i 's/O)/10/g' temp1.txt
sed -i 's/A+)/9/g' temp1.txt
sed -i 's/A)/8.5/g' temp1.txt
sed -i 's/B+)/8/g' temp1.txt
sed -i 's/B)/7/g' temp1.txt
sed -i 's/C)/6/g' temp1.txt
sed -i 's/P)/5/g' temp1.txt
sed -i 's/F)/0/g' temp1.txt


awk '{printf($1" "(($2 * 4) + ($3 * 4) + ($4 * 3) + ($5 * 3) + ($6 * 3) + ($7 * 3) + ($8 * 1) + ($9 * 1) + ($10 * 1))/23)}' temp1.txt > cgpa1.txt


sed -i 's/MDL/\nMDL/g' cgpa1.txt

pdftotext S2.pdf S2.txt
tr -d '\n' < S2.txt > s2.txt
sed -i 's/MDL16CS/\nMDL16CS/g' s2.txt
sed -i 's/TCE/\nTCE/g' s2.txt
grep MDL16CS s2.txt > temp.txt


sed  's/CY100/ /g' temp2.txt > s2grade.txt
sed -i 's/MA102(/ /g' s2grade.txt
sed -i 's/BE100(/ /g' s2grade.txt
sed -i 's/BE102(/ /g' s2grade.txt
sed -i 's/CY110(/ /g' s2grade.txt
sed -i 's/EC100(/ /g' s2grade.txt
sed -i 's/EC110(/ /g' s2grade.txt
sed -i 's/CS120(/ /g' s2grade.txt
sed -i 's/  CS100(/ /g' s2grade.txt



sed -i 's/O)/10/g' s2grade.txt
sed -i 's/A+)/9/g' s2grade.txt
sed -i 's/A)/8.5/g' s2grade.txt
sed -i 's/B+)/8/g' s2grade.txt
sed -i 's/B)/7/g' s2grade.txt
sed -i 's/C)/6/g' s2grade.txt
sed -i 's/P)/5/g' s2grade.txt
sed -i 's/F)/0/g' s2grade.txt


sed -i 's/,/ /g' s2grade.txt


awk '{printf($1" "(($2 * 4) + ($3 * 4) + ($4 * 3) + ($5 * 1) + ($6 * 1) + ($7 * 4) + ($8 * 3) + ($9 * 3) + ($10 * 1))/24)}' s2grade.txt > cgpa2.txt


sed -i 's/MDL/\nMDL/g' cgpa2.txt

join -1 1 -2 1 cgpa1.txt cgpa2.txt > join.txt
awk '{printf($1" :" (($2*23) + ($3*24))/47)}' join.txt > CGPA.txt

sed -i 's/MDL/\nMDL/g' CGPA.txt
