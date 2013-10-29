#!/bin/bash

function usage {
  echo "A tool to merge the BAMs generated by a Bina pipeline run"
  echo "MAPPED_BAMS_DIR=<path to mapped BAM dir> UNMAPPED_BAMS_DIR=<path to unmapped BAM dir> OUTPUT_BAM=<the merged BAM> SAMTOOLS=<path to samtools> merge_bams.sh"
  exit 1
}

[ -z "$MAPPED_BAMS_DIR" -o -z "$UNMAPPED_BAMS_DIR" -o -z "$OUTPUT_BAM" -o -z "$SAMTOOLS" ] && usage

set -ex

bams=`ls $MAPPED_BAMS_DIR/*.bam $UNMAPPED_BAMS_DIR/*.bam`
$SAMTOOLS merge -1 $OUTPUT_BAM $bams
