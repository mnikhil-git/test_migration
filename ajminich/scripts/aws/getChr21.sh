#!/bin/bash

# Gets the hg19 reference data for Chromosome 21.

DATA_FOLDER="/mnt/data/chr21/"

echo "Getting hg19 chr21 reference data."
mkdir -p ${DATA_FOLDER}
s3cmd get --skip-existing s3://bina.data/chr21/chr21* ${DATA_FOLDER}

echo "Completed downloading chr21 reference data."
