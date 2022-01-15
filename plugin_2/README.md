This plugin will be available as `fake_package.plugins.plugin_b.b`, this is due to how the folders are nested in this situation.  

You must use `find_namespace_packages` in `setup.py`:

```python
setup(
    name='fake_package_plugin_b',
    ...
    packages=find_namespace_packages(include=['fake_package.*']),
)
```

Note that `__init__.py` can be present arbitrarily deep in a nested folder structure, but not at the top level, just like `plugin_1`.

For a reference on the directory structure, see [these docs](https://packaging.python.org/en/latest/guides/packaging-namespace-packages/).
