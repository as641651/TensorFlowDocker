## Usage

Install [Docker](https://nbviewer.jupyter.org/github/as641651/GCP/blob/master/Docker/01_Docker_Installation.ipynb)

Allow execution of all shell files
```bash
chmod +x *.sh
```

### Build Image
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
> Jupyter notebook runs on **localhost:8000**

> Tensorboard runs on **localhost:6005**
