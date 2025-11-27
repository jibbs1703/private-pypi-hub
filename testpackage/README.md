# Test Package

This is a simple Python package created to demonstrate the functionality of a private PyPI server.

## Features

- **Greet Class**: A simple class that provides a greeting message.

## Installation

To install this package, use the following command after setting up your private PyPI server:

```bash
pip install testpackage
```

## Usage

Here's an example of how to use the `Greet` class:

```python
from greet import Greet

greeter = Greet("World")
print(greeter.say_hello())
```
