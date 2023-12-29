
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
export PATH=$CUDA_HOME/bin:$PATH

folder=$(dirname $(readlink -f "$0"))
workdir=$(pwd)

cd $folder
conda create -n OpenOccupancy
conda activate OpenOccupancy
echo "Installing requirements"
echo "======================"
echo "$(python --version)"
echo "$(pip --version)"
echo "======================"
bash ./install.sh
python setup.py develop
echo "======================"
echo "Installation complete"
echo "======================"
cd $workdir
