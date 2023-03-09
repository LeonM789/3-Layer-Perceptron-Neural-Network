
<h1 align="center">
  <br>
  <a href="https://leonmarx.de"><img src="https://leonmarx.de/wp-content/uploads/2022/10/69519963-1D46-425F-81EA-E60863D7BD47_1_201_a.jpeg" alt="Markdownify" width="200"></a>
  <br>
  3 Layer Perceptron
  <br>
</h1>

<h4 align="center"><b><u>A simple version of a <a href="https://towardsdatascience.com/what-is-a-perceptron-basics-of-neural-networks-c4cfea20c590" target="_blank">neural network</b></u></a>.</h4>


<p align="center">
  <a href="#introduction">Introduction</a> •
  <a href="#key-features">Key Features</a> •
  <a href="#Requirements">Requirements</a> •
  <a href="#Usage">Usage</a> •
  <a href="#Example">Example Datasets</a> •
  <a href="#related">Related</a> •
  <a href="#license">License</a>
</p>


<br>
## Introduction
This repository contains Matlab code, test data, and input data for a 3-layer perceptron, a type of artificial neural network that consists of an input layer, a hidden layer, and an output layer. The network is trained using the backpropagation algorithm to approximate linear and non linear relationships of the input data. It also shows the progress in a live plot during the calculations.

<br>

## Requirements
The code in this repository is written in Matlab, and requires the following toolboxes:

  - Symbolic Math Toolbox

<br>

## Usage
To train and test the 3-layer perceptron, simply run the Perceptron.m script and then choose the following hyperparameters:
<br>
Example:
```matlab
testing data: just select the already existing testing data file or select your own
training data: same as above
activation function = x^2
neurons: 90
learning rate: 0.05 (should be smaller than 0.1)
epochs: 1000
```
<br>
This will train and test the network on the specified datasets, with the specified number of neurons, learning rate, number of epochs, and activation function. You will see the progress of the error and the results in a live plot during the calculations. At the end you get 3 plots as an overview and the results in the terminal.

<br>

## Example Datasets
The repository includes 2 example datasets. The dataset for training `TrainData.csv` consists of 45 training examples and the testing data `TestData.csv 13 validation examples, each with 3 input features and a single output label. The goal of the network is to predict the output label based on the input features.

<br>

## You may also like...

- [FlappyBird AI](https://github.com/LeonM789/FlappyBirdAI.git) - A neural network in Python

<br>

## License

This code is released under the MIT License.

<br>

---

> [leonmarx.de](https://www.leonmarx.de) &nbsp;&middot;&nbsp;
> GitHub [@LeonM789](https://github.com/LeonM789) 
