
<h1 align="center">
  <br>
  <a href="https://leonmarx.de"><img src="https://leonmarx.de/wp-content/uploads/2022/10/69519963-1D46-425F-81EA-E60863D7BD47_1_201_a.jpeg" alt="Markdownify" width="200"></a>
  <br>
  3 Layer Perceptron
  <br>
</h1>

<h4 align="center"><b><u>A simple version of a neural <a href="https://towardsdatascience.com/what-is-a-perceptron-basics-of-neural-networks-c4cfea20c590" target="_blank">network</b></u></a>.</h4>


<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#related">Related</a> •
  <a href="#license">License</a>
</p>

## Key Features

* Approximation of any number of n-dimensional points
* Free choise of the
    - activation function
    - number of neurons
    - learning rate eta
    - number of training epochs
* Live plot during the calculations
    - "animated approximation of the approximation"
    - animated progress of the error
* Plots to see the end result
* Output of the exact errors


## How To Use

To clone and run this application, you'll need [Git](https://git-scm.com) and [Matlab](https://de.mathworks.com/products/matlab.html) (and the Symbolic Math Toolbox in Matlab) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/LeonM789/3-Layer-Perceptron.git
```
Open the folder in MATLAB and then open the Perceptron.m file in the editor. Now you can click on the Run button and the programm is starting.  
You will now be asked to enter a few data:
- testing data: just select the already existing testing data file or select your own
- training data: same as above
- activation function: can be any function you want (e.g. sin(x), 5*x^2, ...)
- neurons: affects how many weights there will be (e.g. 20, 50, 100, ...)
- learning rate: for good results I would suggest anything < 0.1
- epochs: how often you want the training to be done - a few hundred should give good results

## You may also like...

- [FlappyBird AI](https://github.com/LeonM789/FlappyBirdAI.git) - A neural network in Python


## License

MIT

---

> [leonmarx.de](https://www.leonmarx.de) &nbsp;&middot;&nbsp;
> GitHub [@LeonM789](https://github.com/LeonM789) 
