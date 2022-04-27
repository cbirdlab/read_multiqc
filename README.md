# MultiQC-to-R
Tools to read in the tidy MultiQC outputs from FastQC, FastP, and FastQScreen

# [`read_multiqc.R`](read_multiqc.R)

This script takes a directory and read into the enviornment [`Multiqc`](https://multiqc.info/) outputs from [`FastQC`](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/), [`FastP`](https://github.com/OpenGene/fastp), and [`FastQScreen`](https://www.bioinformatics.babraham.ac.uk/projects/fastq_screen/) using the following functions.

## read_multiqc_fastqc() - 3 arguments: 
* PATH_MQC_FQC = the path to the directory where multiqc outputs summary statistics. No default, user must provide an argument.
* FILE1 = a file to be read in. By default this will be "multiqc_general_stats.txt". If of this file was altered FILE1 must be updated to the proper name.
* FILE2 = a file to be read in. by default this will be "multiqc_fastqc.txt". If of this file was altered FILE1 must be updated to the proper name.
* FILE3 = a file to be read in. by default this will be "mqc_fastqc_overrepresented_sequencesi_plot_1.txt". If of this file was altered FILE1 must be updated to the proper name.
    
## read_multiqc_fastp() - 3 arguments: 
* PATH_MQC_FP = the path to the directory where multiqc outputs summary statistics. No default, user must provide an argument.
* FILE1 = a file to be read in. By default this will be "multiqc_general_stats.txt". If of this file was altered FILE1 must be updated to the proper name.
* FILE2 = a file to be read in. by default this will be "mqc_fastp_filtered_reads_plot_1.txt". If of this file was altered FILE1 must be updated to the proper name.

## read_multiqc_fastqscreen() - 2 arguments: 
* PATH_MQC_FQS = the path to the directory where multiqc outputs summary statistics. No default, user must provide an argument.
* FILE1 = a file to be read in. By default this will be "multiqc_fastq_screen.txt". If of this file was altered FILE1 must be updated to the proper name.
