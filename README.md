# docker-picrust v1.1.4

<a href="http://picrust.github.io/picrust/">PICRUSt</a> docker image based on <a href="https://hub.docker.com/u/conda"><img src="https://secure.gravatar.com/avatar/f3257938262658419b4d2c95011b2e2e.jpg" alt="Conda" height="48px"/> Miniconda2</a>

PICRUSt: Phylogenetic Investigation of Communities by Reconstruction of Unobserved States

PICRUSt (pronounced “pie crust”) is a bioinformatics software package designed to predict metagenome functional content from marker gene (e.g., 16S rRNA) surveys and full genomes.

## Base Image
 * [Conda](https://hub.docker.com/u/conda) conda/miniconda2-centos7
  
## Installed
 * PICRUSt (1.1.4)

## Settings
	
    VOLUME /data/
    WORKDIR /data/

## Running

    docker run -it -v $(pwd):/data infotechsoft/picrust bash
    # normalize_by_copy_number.py \
        -i your_otu_table.biom \
        -o normalized_otus.biom

# Maintainer 
<a href="http://www.infotechsoft.com">
<img src="http://infotechsoft.com/wp-content/uploads/2017/04/InfotechSoft_logo-small.png" alt="INFOTECH Soft"/>
</a>
