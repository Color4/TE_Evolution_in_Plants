for sample in `cat sample_list`
do
/share/app/blast/2.11.0/bin/blastp -query   ./${sample}_protien.fa  -db ./DB/FLOR_db   -evalue 1e-5  -max_target_seqs 5  -outfmt 6  -out ./Result/${specie}/${sample}_FLOR  -num_threads 8
/share/app/blast/2.11.0/bin/blastp -query    ./${sample}_protien.fa  -db ./DB/PlantTF_db   -evalue 1e-5  -max_target_seqs 5  -outfmt 6  -out ./Result/${specie}/${sample}_PlantTF  -num_threads 8
done
