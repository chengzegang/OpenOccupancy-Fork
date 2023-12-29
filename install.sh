conda install -y pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia --solver=libmamba && \
pip install opencv-python timm && \
pip install nuscenes-devkit && \
pip install mmcv==2.1.0 -f https://download.openmmlab.com/mmcv/dist/cu121/torch2.1/index.html && \
pip install git+https://github.com/FindDefinition/cumm.git && \
pip install git+https://github.com/traveller59/spconv.git && \
pip install git+https://github.com/open-mmlab/mmdetection.git && \
pip install git+https://github.com/open-mmlab/mmsegmentation.git && \
pip install git+https://github.com/open-mmlab/mmdetection3d.git && \
echo "packages installed"

 