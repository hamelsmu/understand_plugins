This plugin will be available as `fake_package.plugins.plugin_b.b`, this is due to how the folders are nested in this situation.  Note that in setup.py:

```python
setup(
    name='fake_package_plugin_b',
    ...
    packages=find_namespace_packages(include=['fake_package.*']),
)
```
