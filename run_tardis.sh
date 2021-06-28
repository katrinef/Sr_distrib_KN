#!/bin/bash

source $CONDA_DIR/etc/profile.d/conda.sh
export CONDA_PKGS_DIRS=~/modi_mount/conda_dir

wget https://raw.githubusercontent.com/tardis-sn/tardis/master/tardis_env3.yml

conda clean --all
conda env create -f tardis_env3.yml --force
conda activate tardis

git clone https://github.com/tardis-sn/tardis.git
cd tardis
python setup.py install --user

cd ../
sed -i 's/.decode("ascii")//g' /home/pjl124_alumni_ku_dk/.local/lib/python3.7/site-packages/tardis_sn-3.0.dev4019-py3.7.egg/tardis/io/atom_data/base.py

python tardis_VALD.py