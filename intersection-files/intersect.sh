for name in `cat names.txt`
do
	cp $name total_intersect.bed
	wc -l $name
done
for name in `cat names.txt`
do
	echo $name
	bedtools intersect -a total_intersect.bed -b $name > save
	cp save total_intersect.bed
	wc -l total_intersect.bed
done
rm -rf save
