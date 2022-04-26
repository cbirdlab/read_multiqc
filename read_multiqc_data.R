# Package names
packages <- c("tidyverse", "lubridate", "janitor", "tidyr", "purrr", "furrr")

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))

read_multiqc_fastqc <- function(PATH_MQC_FQC = "../preprocessing_data_ssl/multiqc_fastqc/all_treatments_report_data/",
                                FILE1 = "multiqc_general_stats.txt",
                                FILE2 = "multiqc_fastqc.txt"){
  read_tsv(paste(PATH_MQC_FQC, FILE1, sep = "")) %>%
    inner_join(read_tsv(paste(PATH_MQC_FQC, FILE2, sep = ""))) %>%
    clean_names()
}

read_multiqc_fastp <- function(PATH_MQC_FP = "../preprocessing_data_ssl/multiqc_fastp/multiqc_data/",
                               FILE1 = "multiqc_general_stats.txt",
                               FILE2 = "mqc_fastp_filtered_reads_plot_1.txt"){
  read_tsv(paste(PATH_MQC_FP, FILE1, sep = "")) %>%
    inner_join(read_tsv(paste(PATH_MQC_FP, FILE2, sep = ""))) %>%
    clean_names()
}

read_multiqc_fastqscreen <- function(PATH_MQC_FQS = "../preprocessing_data_ssl/multiqc_fastq_screen/multiqc_data/",
                                     FILE = "multiqc_fastq_screen.txt"){
  read_tsv(paste(PATH_MQC_FQS, FILE, sep = "")) %>%
    clean_names()
}