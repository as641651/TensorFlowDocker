## Usage

### Dependency:
Install [Docker](https://nbviewer.jupyter.org/github/as641651/GCP/blob/master/Docker/01_Docker_Installation.ipynb)

### Clone this repository
```bash
git clone https://github.com/as641651/TensorFlowDocker.git
cd TensorFlowDocker
```
Allow execution of all shell files (if needed)
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
#If you have a GPU
./build.sh
#If you dont have a GPU
./cpu_build.sh
```

### Run Container
If you have GPU
```bash
./run [PATH_TO_PROJECT_DIR]
(or)
#To run in the current directory
./run 
``` 
If you dont have a GPU, use **./cpu_run.sh**

### Run jupyter notebook
```bash
jupyter-notebook --allow-root
```
Copy the token displayed on your terminal, then Open your browser and hit
```bash
localhost:8000
```

> Tensorboard runs on **localhost:6005**
