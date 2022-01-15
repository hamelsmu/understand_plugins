Unlike `plugin_2` this plugin is available directly in the `plugin` submodule because of the way the folders are nested.

Again look at [setup.py](setup.py) it is the same:

```python
    setup(
        name='fake_package',
        ...
        packages=find_namespace_packages(include=['fake_package.*']),
    )
```