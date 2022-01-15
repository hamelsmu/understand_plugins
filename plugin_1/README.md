Unlike `plugin_2`, this plugin is available directly in the `plugin` submodule because of the way the folders are nested.



In [setup.py](setup.py) you must use `find_namespace_packages` in setup.py:

```python
    setup(
        name='fake_package',
        ...
        packages=find_namespace_packages(include=['fake_package.*']),
    )
```

Note that `__init__.py` is not present at the top level (in `fake_pacakge/`) which is the defining characteristic of a namespace package.

For a reference on the directory structure, see [these docs](https://packaging.python.org/en/latest/guides/packaging-namespace-packages/)
