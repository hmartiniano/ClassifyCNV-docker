# ClassifyCNV-docker
Dockerfile for [ClassifyCNV](https://github.com/GenoTek/ClassifyCNV)

To use with docker:

First clone the repo (jus to to get the example input files):

    git clone https://github.com/GenoTek/ClassifyCNV && cd ClassifyCNV

Then run with docker:


    docker run -it -v results:/results hmartiniano/classifycnv:latest python3 ClassifyCNV.py --infile Examples/ACMG_examples.hg19.bed --GenomeBuild hgsingu19 --precise --outdir results

Or use with singularity:

    singulary build classifycnv.simg docker://hmartiniano/classifycnv:latest
    singularity exec -H ${PWD} classifycnv.simg  python3 /app/ClassifyCNV.py --infile ${PWD}/Examples/ACMG_examples.hg19.bed --GenomeBuild hg19 --precise --outdir ${PWD}/results
