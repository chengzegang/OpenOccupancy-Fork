conda install -y pytorch==1.10.1 torchvision==0.11.2 torchaudio==0.10.1 cudatoolkit=11.3 -c pytorch -c conda-forge --solver=libmamba && \
pip install opencv-python timm nuscenes-devkit mmcv-full==1.4.0 mmdet==2.14.0 mmsegmentation==0.14.1 open3d && \
pip install spconv-cu113 && \
pip install git+https://github.com/open-mmlab/mmdetection3d.git@v0.17.1 && \
echo "packages installed"
