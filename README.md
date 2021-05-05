# ClassifyCNV-docker
Dockerfile for ClassifyCNV (https://github.com/GenoTek/ClassifyCNV)[]

To use with docker:

First clone the repo (jus to to get the example input files):
`
git clone https://github.com/GenoTek/ClassifyCNV && cd ClassifyCNV
`
The run the docker cmd:
`
docker run -it -v results:/results hmartiniano/classifycnv:latest python3 ClassifyCNV.py --infile Examples/ACMG_examples.hg19.bed --GenomeBuild hgsingu19 --precise --outdir results
`

Or use with singularity:

`
singulary build classifycnv.simg docker://hmartiniano/classifycnv:latest
./classifycnv.simg python3 ClassifyCNV.py --infile Examples/ACMG_examples.hg19.bed --GenomeBuild hgsingu19 --precise --outdir results

`
