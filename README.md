# Simple Protein Dataset
## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Installation](#installation)
* [Usage](#usage)
* [Example](#example)
* [Authors](#authors)
## General info 
It's a simple dataset we made to learn **xml**, **xslt** and **dtd**. 
First we made dtd to define the file structure, following the example of [UniProt](https://www.uniprot.org/)
Second are examples written in xml. We used for examples Hemoglobin and Rieske (written in polish leanguage) proteins.
Then we made xslt files to transorm our examples into good looking html pages which are more clearer than original xml files.
It's important in protein database to be able to download a fasta file, so we did that too. We tranform our xml files to fasta files in *nucleotide_transform.xsl* and *aminoacids_transform.xsl*. 
## Technologies 
* XSLT
* XML 
* DTD
* HTML
* CSS
## Installation
> Install a '''xsltc''' processor to transform files on Ubuntu/Debian
''' sudo apt-get install xsltproc '''
> Install '''xmllint''' to validate our xml example on Ubuntu/Debian
''' sudo apt-get install xmllint'''
## Usage
> To validate our xml example we used command '''xmllint'''
''' xmllint dtd_file.dtd xml_flie.xml '''
> To transform file with xsl flie we used command '''xsltproc'''
''' xsltproc transformation_file.xsl xml_file.xml '''
> To transform and save result in file 
''' xsltproc -o result_file.txt transformation_file.xsl xml_file.xml '''
## Example
> Examples with our files.
* To check validation:
''' xmllint protein.dtd hemoglobin_protein.xml '''
* To tranform file into html
''' xsltproc -o Hemoglobin.html xsl_files/visual_transformation.xsl hemoglobin_protein.xml '''
* To transform file into fasta (nucleotides)
''' xsltproc -o nucleotides.fasta xsl_files/nucleotides_transformation.xsl hemoglobin_protein.xml '''
* To transform file into fasta (aminoacids)
''' xsltproc -o aminoacids.fasta xsl_files/aminoacids_transformation.xsl hemoglobin_protein.xml '''
## Authors
* **Bartosz Lewandowski** - Hemoglobin example, main corrects, xslt into fasta files, dtd file.
* **Bartłomiej Hofman** - Rieske example, xslt into html file, css, dtd file.

