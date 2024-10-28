for sample in `cat sample_list`
do
for region in ncRNA Gene
do
bedtools intersect -a ./TEpep_Bed/${sample}_TPSI.bed   -b ./${region}_Bed/${sample}_${region}.bed  -f 0.5  -wo > ./Result/${region}_TEpep/${sample}.TEpep_vs_${region}.bed;
bedtools intersect -a ./TE_Bed/${sample}_EDTA.bed   -b ./${region}_Bed/${sample}_${region}.bed  -f 0.5  -wo > ./Result/${region}_TE/${sample}.TE_vs_${region}.bed;
done
done 





