FROM pytorch/pytorch:1.1.0-cuda10.0-cudnn7.5-runtime

RUN conda update -n base -c defaults conda
RUN conda install -y -c anaconda python=3.7
RUN conda install -y -c pytorch pytorch=1.1.0 torchvision

RUN pip install git+https://github.com/cs4246/gym-grid-driving.git