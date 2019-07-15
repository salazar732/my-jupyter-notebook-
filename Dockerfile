FROM jupyter/datascience-notebook

RUN pip install ipyparallel && \
pip install pandas seaborn numpy scipy matplotlib ipython sympy nose && \
pip install pandas && \
pip install  scikit-learn && \
pip install Scipy Scikit-learn Theano TensorFlow Keras  && \
pip install Torch && \
pip install PyBrain && \
pip install plotly && \
pip install cufflinks && \
pip install bokeh .y
 
RUN conda update -n base conda
 
RUN conda install -c r r -y \
conda install -c r/label/archive r && \
conda install -c r r-essentials && \
conda install -c r r-devtools -y && \
conda install pandas -y && \
conda install -c anaconda numpy -y && \
conda install scikit-learn -y && \
conda install pytorch torchvision cudatoolkit=10.0 -c pytorch -y && \
conda install plotly -y && \
conda install numpy -y
