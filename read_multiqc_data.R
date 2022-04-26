# Package names
packages <- c("tidyverse", "janitor")

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))

#### Functions ####

read_multiqc_fastqc <- function(PATH_MQC_FQC,
                                FILE1 = "multiqc_general_stats.txt",
                                FILE2 = "multiqc_fastqc.txt",
                                FILE3 = "mqc_fastqc_overrepresented_sequencesi_plot_1.txt"){
  read_tsv(paste(PATH_MQC_FQC, FILE1, sep = "")) %>%
    inner_join(read_tsv(paste(PATH_MQC_FQC, FILE2, sep = ""))) %>%
    inner_join(read_tsv(paste(PATH_MQC_FQC, FILE3, sep = ""))) %>%
    clean_names()
}

read_multiqc_fastp <- function(PATH_MQC_FP,
                               FILE1 = "multiqc_general_stats.txt",
                               FILE2 = "mqc_fastp_filtered_reads_plot_1.txt"){
  read_tsv(paste(PATH_MQC_FP, FILE1, sep = "")) %>%
    inner_join(read_tsv(paste(PATH_MQC_FP, FILE2, sep = ""))) %>%
    clean_names()
}

read_multiqc_fastqscreen <- function(PATH_MQC_FQS,
                                     FILE = "multiqc_fastq_screen.txt"){
  read_tsv(paste(PATH_MQC_FQS, FILE, sep = "")) %>%
    clean_names()
}