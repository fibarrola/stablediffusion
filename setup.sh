conda env create -n ldm -f environment.yaml
conda activate ldm

conda install pytorch==1.12.1 torchvision==0.13.1 -c pytorch
pip install transformers==4.19.2 diffusers invisible-watermark


pip install -r requirements.txt

pip install -e .