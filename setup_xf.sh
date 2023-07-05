conda update -n base -c defaults conda
conda env remove -n ldm_2
conda env create -n ldm_2 -f environment.yml
conda activate ldm_2
pip3 install -r requirements.txt
python3 setup.py install

conda update -n base -c defaults conda
conda env remove -n ldm_2
conda env create -n ldm_2 -f environment.yml -y
conda activate ldm_2
pip3 install -r requirements.txt
python3 setup.py install

export CUDA_HOME=/usr/local/cuda
conda install -c nvidia/label/cuda-11.3.0 cuda-nvcc -y
conda install -c conda-forge gcc -y
conda install -c conda-forge gxx_linux-64==9.5.0 -y

cd ..
git clone https://github.com/facebookresearch/xformers.git
cd xformers
git submodule update --init --recursive
pip install -r requirements.txt
pip install -e .
cd ../stablediffusion

# python scripts/txt2img_db_gen.py --prompt "a puppy" --ckpt checkpoints/v2-1_768-ema-pruned.ckpt --config configs/stable-diffusion/v2-inference-v.yaml --H 768 --W 768 --device cuda --n_samples 1