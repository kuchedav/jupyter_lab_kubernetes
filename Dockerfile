FROM python:3.8

WORKDIR /home
COPY src/jupyter_lab_kubernetes/. .

RUN pip install -r requirements.txt
CMD [ "jupyter", "notebook", "--generate-config"]
CMD ["mv","jupyter_notebook_config.py","/root/.jupyter/jupyter_notebook_config.py"]
CMD [ "python", "-m", "jupyter", "lab","--allow-root", ">>", "jupyter_lab.log"]
