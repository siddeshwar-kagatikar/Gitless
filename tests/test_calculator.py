import pytest
from app.calculator import (
    add,
    subtract,
    multiply,
    divide,
    power,
    factorial,
    mean,
    load_config
)


def test_add():
    assert add(2, 3) == 5


def test_subtract():
    assert subtract(5, 3) == 2


def test_multiply():
    assert multiply(4, 3) == 12


def test_divide():
    assert divide(10, 2) == 5


def test_divide_by_zero():
    with pytest.raises(ValueError):
        divide(10, 0)


def test_power():
    assert power(2, 3) == 8


def test_factorial():
    assert factorial(5) == 120


def test_factorial_negative():
    with pytest.raises(ValueError):
        factorial(-1)


def test_factorial_non_int():
    with pytest.raises(TypeError):
        factorial(3.5)


def test_mean():
    assert mean([1, 2, 3, 4]) == 2.5


def test_mean_empty():
    with pytest.raises(ValueError):
        mean([])


def test_load_config():
    config = load_config()
    assert "app_name" in config
    assert "version" in config
