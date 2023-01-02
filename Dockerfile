FROM python:3.8

RUN mkdir /app
WORKDIR /app
COPY src/jupyter_lab_kubernetes/. .

RUN pip install -r requirements.txt
RUN jupyter notebook --generate-config
RUN mv jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
CMD [ "python", "-m", "jupyter", "lab","--allow-root", ">>", "jupyter_lab.log"]
