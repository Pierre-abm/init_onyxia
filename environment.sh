GIT_REPO=detection_cypres
git clone --depth 1 https://pierre.abraham:ShSEnZ3w1vbK5vM8Z2gamG86MQp1Ojlhegk.01.0z0ihe40f@forge.inrae.fr/dynafor/dev-test/pierre-abraham/${GIT_REPO}.git
chown -R onyxia:users ${GIT_REPO}/

pip install -r ${GIT_REPO}/requirements.txt

git clone https://pierre.abraham:ShSEnZ3w1vbK5vM8Z2gamG86MQp1Ojlhegk.01.0z0ihe40f@forge.inrae.fr/dynafor/dev-test/manon-collard/limes.git

curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Installation silencieuse (-b pour batch, -p pour le chemin)
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda

# Activation immédiate
source $HOME/miniconda/bin/activate
conda init bash

conda create -n geo -c conda-forge \
    xarray \
    numpy \
    gdal \
    pdal \
    scikit-learn \
    geopandas \
    rasterstats \
    rioxarray

conda activate geo
conda install pip
cd limes\
pip install -e .
pip install owslib natsort thefuzz wget legacy-cgi
