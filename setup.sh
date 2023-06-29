conda update -n base -c defaults conda
conda env remove -n ldm_2
conda env create -n ldm_2 -f environment.yml
conda activate ldm_2
