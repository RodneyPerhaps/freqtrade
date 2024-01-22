git clone https://github.com/freqtrade/freqtrade.git

# enter downloaded directory 'freqtrade'
cd freqtrade
conda create --name freqtrade python=3.9

brew install hdf5
export HDF5_DIR=$(brew --prefix hdf5)
brew install ta-lib
export TA_INCLUDE_PATH="$(brew --prefix ta-lib)/include"
export TA_LIBRARY_PATH="$(brew --prefix ta-lib)/lib"

python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
python3 -m pip install -e .

conda install pytorch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 -c pytorch
pip install gymnasium==0.29.1
pip install stable_baselines3==2.2.1
pip install sb3_contrib==2.0.0a9
pip install tqdm==4.66.1
pip install scikit-learn==1.3.2
conda install conda-forge::lightgbm
conda install conda-forge::xgboost
conda install conda-forge::catboost
