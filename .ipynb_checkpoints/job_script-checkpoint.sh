#!/bin/bash
#SBATCH --time=00:15:00
#SBATCH --account=an-tr043
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=4000M
#SBATCH --output=tmathew-%j.txt



#add modules
module load python/3.11.5


#create and activate virtual environment
virtualenv --no-download ENV
source ENV/bin/activate

#install Packages
pip install --no-index --upgrade pip
pip install --no-index numpy pandas matplotlib dask scikit-learn

# launch the train file
python mls_python_script.py



