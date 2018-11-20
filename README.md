## Usage

Install [Docker](https://nbviewer.jupyter.org/github/as641651/GCP/blob/master/Docker/01_Docker_Installation.ipynb)

Allow execution of all shell files
```bash
chmod +x *.sh
```
### Add python dependencies to 
```bash
python-requirements/requiresments.txt
```
Please note, that the prebuilt image already contains almost all the libraries you ll need for learning tensorflow. Modify this file only if you find certain library to be missing in the environment

### Build Image
This step is needed only if you modify requirements.txt
```bash
./build.sh
```

### Run Container
```bash
./run [PATH_TO_PROJECT_DIR]
``` 

### Run jupyter notebook
```bash
jupyter-notebook --allow-root
```
Copy the token displayed on your terminal, then Open your browser and hit
```bash
localhost:8000
```

> Tensorboard runs on **localhost:6005**
