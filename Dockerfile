FROM ubuntu:trusty
MAINTAINER Abhinav Sharma <abhi18av@outlook.com>

RUN apt update \
    apt install wget unzip tree

RUN apt-add-repository ppa:fkrull/deadsnakes \
    apt-get update \
    apt-get install python2.5


#TODO change workdir
RUN cd home && \
    wget http://resistance-sniffer.bi.up.ac.za/Mycobacterium_tuberculosis/help/mtb_resistance_sniffer.zip && \
    unzip mtb_resistance_sniffer.zip && \
    chmod 755 -R  mtb_resistance_sniffer/lib/bin/


#TODO change workdir for running the tool
#http://resistance-sniffer.bi.up.ac.za/Mycobacterium_tuberculosis/help/mtb_resistance_sniffer.zip

#TODO
#http://resistance-sniffer.bi.up.ac.za/Mycobacterium_tuberculosis/help/index.html
#Unzip file to a selected directory. A folder mtb_resistance_sniffer will appear with several files and subordinate folders inside.
#Copy sequence files for analysis to folder input and run Python /home_directory/run.py. The program will process all the input files and store the results in folder output. 

# root@dddc68050099:/mtb_resistance_sniffer# tree
# .
# |-- formatdb.log
# |-- input
# |   |-- TB1808.vcf
# |   `-- example.fna
# |-- lib
# |   |-- bin
# |   |   |-- bl2seq.exe
# |   |   |-- blastall.exe
# |   |   |-- blastn
# |   |   |-- blastp
# |   |   |-- clustalw-2.1-linux-x86_64-libcppstatic
# |   |   |-- clustalw2
# |   |   |-- clustalw2.exe
# |   |   |-- formatdb
# |   |   |-- formatdb.exe
# |   |   |-- makeblastdb
# |   |   |-- muscle.exe
# |   |   |-- muscle3.8.31_i86linux32
# |   |   |-- muscle3.8.31_i86linux64
# |   |   |-- ncbi-blast-2.2.25+
# |   |   |-- tblastx
# |   |   |-- tmp
# |   |   |   |-- db.nhr
# |   |   |   |-- db.nin
# |   |   |   |-- db.nsq
# |   |   |   |-- db.phr
# |   |   |   |-- db.pin
# |   |   |   |-- db.psq
# |   |   |   |-- tmp.faa
# |   |   |   `-- tmp.fnn
# |   |   `-- vh1_8j2nh.tmp
# |   |-- blast.py
# |   |-- blast.pyc
# |   |-- collection.py
# |   |-- collection.pyc
# |   |-- main.py
# |   |-- main.pyc
# |   |-- progressbar.py
# |   |-- progressbar.pyc
# |   |-- seq_io.py
# |   `-- seq_io.pyc
# |-- output
# |   |-- TB1808.svg
# |   `-- TB1808.txt
# |-- run.py
# `-- sources
#     |-- NC_000962.faa
#     |-- NC_000962.fasta
#     |-- NC_000962.fnn
#     |-- histogram.svg
#     |-- para.inf
#     `-- table.txt

# 8 directories, 44 files
 
 

