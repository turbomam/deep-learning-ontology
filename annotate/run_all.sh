
grep 'area\":' methods_reformat.txt | sort | uniq > methods_reformat_area.txt
grep 'collection\":' methods_reformat.txt | sort | uniq > methods_reformat_collection.txt

#--output-type yaml/tsv 
runoak -i ../aio.owl annotate --text-file methods_reformat.txt > methods_reformat_annotate.out

# --matches-whole-text
runoak -i ../aio.owl annotate --text-file methods_reformat_area.txt > methods_reformat_area_annotate.out
runoak -i ../aio.owl annotate --text-file methods_reformat_collection.txt > methods_reformat_collection_annotate.out

source AIO_only.sh
source PWC_AIO_general_counts.sh
source PWC_AIO_counts.sh


grep  match_string methods_reformat_collection_annotate_AIOonly.txt  | sort | uniq | wc
grep object_label methods_reformat_annotate_AIOonly.txt | sort | uniq | wc


