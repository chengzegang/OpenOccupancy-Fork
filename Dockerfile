FROM nvidia/cuda:12.3.1-devel-ubuntu22.04
RUN apt-get update && apt-get install -y build-essential zip unzip wget git git-lfs

RUN mkdir /workspace -p
WORKDIR /workspace
COPY . /workspace/OpenOccupancy
WORKDIR /workspace/OpenOccupancy

RUN wget -O Mambaforge.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
RUN bash Mambaforge.sh -b -p /opt/conda
ENV PATH="/opt/conda/bin:${PATH}"
RUN conda init bash
RUN conda --version

SHELL ["/opt/conda/bin/conda", "run", "-n", "base", "/bin/bash", "-c"]

RUN conda create -n OpenOccupancy python=3.11 -y --solver=libmamba -c conda-forge
SHELL ["/opt/conda/bin/conda", "activate", "OpenOccupancy"]
RUN bash setup.sh

ENTRYPOINT ["conda", "activate", "OpenOccupancy"]