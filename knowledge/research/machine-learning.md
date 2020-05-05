---
description: machine learning materials
---

# machine learning

Here I am writing a collection of notes I have about data science and machine learning. I am starting with the approach used by [Guilherme Silveira](https://github.com/guilhermesilveira) in a [short course](https://www.youtube.com/watch?v=ccZ2pyr3YDw) \(in Portuguese\).

### Understanding data science

A good way to understand is by a simple example. Let us say we are observing some animals in a farm that has pigs and dogs. In this observation, let us say we can easily check three features of any animal: if it has long fur, has short leg and says woof. We will use zeros and ones to describe each feature. In supervised learning we have to give a set of samples to the machine and also give the right answer, in our case, we have to say if each of the samples is a pig or a dog.

In [this notebook](https://colab.research.google.com/github/cleberjamaral/cleberjamaral.github.io/blob/master/knowledge/research/machine-learning/1-understanding-data-science.ipynb#scrollTo=mFE0HMbQylui), we can see the very basic approach for this problem which is a classification problem, since we want to tell if an animal is of the category of dogs or of pigs. Our dataset has six animals, three are pigs and three are dogs. Only one of the observed pigs has long fur, all of them has short legs and one was observed woofing:`pigs = [[0,1,0],[0,1,1],[1,1,0]]`. In case of dogs, one of has not long, one of them has not short legs and all of said woof: `dogs = [[0,1,1],[1,0,1],[1,1,1]]`. In the given notebook we have trained our machine and asked to predict which animal a `[1,1,1]` should be.

In the [next notebook](https://colab.research.google.com/github/cleberjamaral/cleberjamaral.github.io/blob/master/knowledge/research/machine-learning/2-testing-a-set-get-accuracy.ipynb#scrollTo=kqUuHL_-3TWd), we have started with same dataset and training the machine. But we gave a small dataset of new observations in which we know the right category for each sample. The objective was to calculate the accuracy of our model. 

With this simple application we can see the potential of machine learning. In this case, for a simple categorization between two species of animals. But it could be for any animal which is sometimes even for human hard to tell the exactly specie or could be anything else like to tell if an email is potentially risky or not, if the patient has some disease of not or if a customer is likely to buy or not.

### Working with a bit larger dataset

In this [another notebook](https://colab.research.google.com/github/cleberjamaral/cleberjamaral.github.io/blob/master/knowledge/research/machine-learning/3-spliting-data-train-test.ipynb) we are using pandas to retrieve a dataset from a gist file. The data is in CSV format. It regards to a set of records simulating customers that have visited a website. It joins information of each page the customer has visited and if this customer has bought a product or not. The idea is to build a model to predict from the pages a user visit if he or she is likely to buy or product or not.

It is not too different from the example of pigs and dogs, we just have a larger dataset. The point of this example is to show that we need to split of dataset into train and test in order to calculate its accuracy.

### Diving deeper on data science

The [final notebook](https://colab.research.google.com/github/cleberjamaral/cleberjamaral.github.io/blob/master/knowledge/research/machine-learning/4-data-visualization.ipynb) of this series is about data visualization.

This [list of exercises](https://github.com/cleberjamaral/EstatisticaTYU/tree/master/Python_Lista2) shows a more comprehensive example. It regards to a dataset of a survey done with students of a hypothetical University. The resolution using [python](https://github.com/cleberjamaral/EstatisticaTYU/tree/master/Python_Lista2) and [R](https://github.com/cleberjamaral/EstatisticaTYU/tree/master/R) is available. [Another list](https://github.com/cleberjamaral/EstatisticaTYU/tree/master/Python_Lista3) has more data exploitation. 

### Some other references

* [Understanding neural networks with TensorFlow Playground](https://cloud.google.com/blog/products/gcp/understanding-neural-networks-with-tensorflow-playground)
* [15 Steps to Implement a Neural Net](http://code-spot.co.za/2009/10/08/15-steps-to-implemented-a-neural-net/)
* [How to select the Right Evaluation Metric for Machine Learning Models: Part 1 Regression Metrics](https://medium.com/@george.drakos62/how-to-select-the-right-evaluation-metric-for-machine-learning-models-part-1-regrression-metrics-3606e25beae0)

### Python

* [Getting started with Machine learning on Linux with Python 3 and Scikit-learn](https://techarena51.com/blog/getting-started-machine-learning-linux-python-3-scikit-learn/)
* [Build a gender classifier in Python using Scikit-learn](https://towardsdatascience.com/how-to-build-a-gender-classifier-in-python-using-scikit-learn-13c7bb502f2e): my [repl.it](https://repl.it/@CleberJorgeJorg/genderclassifier)

### Statistical databases

* [United nations databases](https://www.unido.org/researchers/statistical-databases)
* [Base de imagens mamográficas LAPIMO EESC/USP](http://lapimo.sel.eesc.usp.br/bancoweb/)
* [University of South Florida Digital Mammography](http://www.eng.usf.edu/cvprg/Mammography/Database.html)

### Famous quotes

* [Top 10 Artificial Intelligence Quotes That Will Inspire You](https://dzone.com/articles/top-10-artificial-intelligence-quotes-that-will-in)

