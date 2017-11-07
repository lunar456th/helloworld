#!/bin/sh

# for testing only final_annot.sh

if [ $# -ne 4 ]
then
  echo "Usage: agape_annot_final.sh output_directory output_name sequence_fasta_file AGAPE_main_path"
  exit 1
fi

out_dir=$1
out_name=$2
seq=$3
SCRIPTS=$4

. $SCRIPTS/configs.cf

snap_dir=$out_dir/snap_files
maker_dir=$out_dir/maker
comb_annot=$out_dir/comb_annot

$SCRIPTS/final_annot.sh $out_dir/maker/seq.fasta $comb_annot/gff/$out_name.genes.gff $comb_annot $out_name $SCRIPTS

