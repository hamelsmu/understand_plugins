# Fake Package

This is the main package.  The plugins will be attached to this package.

There is a namespace package included in this main package in the `plugins` folder. the [plugins](fake_package/plugins) folder is a namespace package b/c it does not contain an `__init__.py`.  

Because we have namespace package in this main package itself, we are doing something slightly unusual and finding the namespace packages with `setuptools.find_namespace_packages` in addition to using `setuptools.find_pacakges`.  Again, this is because the `plugins` folder is a namespace package and we want to find the plugins in the `plugins` folder.  Normally, we would just use `setuptools.find_packages` and not use `setuptools.find_namespace_packages`.

```python
packages=setuptools.find_packages() + setuptools.find_namespace_packages(include=["fake_package.*"]),
```
