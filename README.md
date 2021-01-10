# Data Science Jupyter Stack
This Docker Container Stack includes everything you need to run Jupyter Notebooks as well as libraries like Pandas, Numpy, Matplotlib, etc... for doing data analysis visualizations and some data science-y stuff.

## Background

We wanted to setup a stable, consistent environment for our Analysts to dig into data, create on the fly visualizations, and use Jupyter Notebooks.

##  Cool Libraries included:
- Plotly  (https://plotly.com/python/pandas-backend/)  - Plotting with Pandas Power
- Cufflinks (https://github.com/santosjorge/cufflinks)  - Creating Interactive Graphs and Plots

## Technical Requirements

- [Docker](https://www.docker.com/products/docker-desktop)
  - This was written using version 19.03.13


## Automation

Take a look at [driver.sh](./driver.sh) to see the commands teed up for you.

We suggest that you use driver.sh or something like it in your work but don't require it.

0. Build the image.
```
bash driver.sh build
```

### Jupyter Notebook Usage

1. To see how to run a Jupyter notebook in the container run this.
```
bash driver.sh jupyter
```

After you do, you should see something like the following at the command line.
```
Starting the Jupyter server.
92332934de7329bddf3f07875974cef11e7ba0f99fe2b2169be4729a71ad8de7
Go to http://localhost:8888/.
```

2. Go to http://localhost:8888/notebooks/notebooks/hello_world.ipynb, and run the notebook.

You should see this in the output of cell 1.
```
[0, 1, 2, 3, 4]
```

3. Stop the container.
```
bash driver.sh stop
```

### Command Line Usage

1. Run the scripts/hello_world.py.
```
bash driver.sh hello-world
```

After you do, you should see something like this at the command line.
```
Running scripts/hello_world.py in the ds_jupyter_stack container.
[0, 1, 2, 3, 4]
```
