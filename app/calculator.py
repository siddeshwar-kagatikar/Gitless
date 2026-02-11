import math
import yaml
from pathlib import Path


CONFIG_PATH = Path("config/settings.yaml")


def load_config():
    """
    Load application configuration.
    Raises FileNotFoundError if config is missing.
    """
    if not CONFIG_PATH.exists():
        raise FileNotFoundError("Configuration file missing")

    with open(CONFIG_PATH, "r") as f:
        return yaml.safe_load(f)


def add(a, b):
    return a + b


def subtract(a, b):
    return a - b


def multiply(a, b):
    return a * b


def divide(a, b):
    if b == 0:
        raise ValueError("Division by zero")
    return a / b


def power(base, exp):
    return base ** exp


def factorial(n):
    if not isinstance(n, int):
        raise TypeError("Factorial only defined for integers")
    if n < 0:
        raise ValueError("Factorial not defined for negative numbers")
    return math.factorial(n)


def mean(values):
    if not values:
        raise ValueError("Mean of empty list")
    return sum(values) / len(values)
# temporary debug change

def cube(a):
    return a * a * a
