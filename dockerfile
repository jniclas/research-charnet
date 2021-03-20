FROM pytorch/pytorch

COPY ./ /workspace

RUN apt-get update

RUN apt-get install -y wget python3-opencv

RUN pip install torchvision opencv-python editdistance pyclipper shapely yacs matplotlib
 
RUN python setup.py build develop