# Cavorit DataLab

Parameterized Jupyter Frontend


## Install and run in Production

```bash
pip install datalab-on-jupyter
jupyter serverextension enable datalab_on_jupyter
jupyter datalab
```

## Development


```bash
yarn

```

Inside  jupyter-extension dir you can install the extension locally.


```bash
cd jupyter-extension
pip install -e .
```

to enable the extension run:

```bash
jupyter serverextension enable datalab_on_jupyter
```

Start a jupyter server with datalab frontend, served from a webpack hot-reload capable dev server.
Changes will update the page

```bash
jupyter datalab --dev
```


# Build and run

```bash
yarn run build
````

After that you can run the extension in production mode. 
Assets will be served from jupyter directly, since there is no webpack server to serve the assets.

```bash
jupyter datalab
```






## Deploy

You may want to change the Version first in `jupyter-extension/datalab_on_jupyter/package.json`

Build Frontend

```bash
cd jupyter-extension/datalab_on_jupyter
yarn run build
```

Build Extension

```bash
cd jupyterhub-extension
yarn run build:python
```


Deploy to PyPi

```bash
cd jupyterhub-extension
yarn run upload:pypi
```




# Docker Container

Build the Container:

```bash
docker build -t mars.koppe.design/cavorit-datalab .
```

Push to Registry:

```bash
docker push mars.koppe.design/cavorit-datalab
```


Run from Registry:

```bash
docker run -d --rm -p 8888:8888 mars.koppe.design/cavorit-datalab start.sh jupyter datalab
```


