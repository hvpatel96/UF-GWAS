FROM hailgenetics/hail:0.2.98

RUN apt-get update

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - 

RUN apt-get install -y nodejs

RUN python3 -m pip install jupyterlab

RUN python3 -m pip install ipywidgets

EXPOSE 8888

CMD ["jupyter-lab", "--allow-root", "--ip='*'", "--port=8888", "--NotebookApp.token=''","--NotebookApp.password=''", "--no-browser"]