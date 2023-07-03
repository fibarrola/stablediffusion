conda update -n base -c defaults conda
conda env remove -n ldm_2
conda env create -n ldm_2 -f environment.yml
conda activate ldm_2
pip3 install -r requirements.txt
python3 setup.py install

# python scripts/txt2img_db_gen.py --prompt "a puppy" --ckpt checkpoints/v2-1_768-ema-pruned.ckpt --config configs/stable-diffusion/v2-inference-v.yaml --H 768 --W 768 --device cuda --n_samples 1