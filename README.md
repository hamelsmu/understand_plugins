Notes on plugins with namespace packages

Instructions

Install the main package and the plugins:

```py
cd main_package
pip install .
cd ../plugin_1/
pip install .
cd ../plugin_2/
pip install .
```

After you do this, you can test that the plugins are available as follows.  **Warning, plugins are not loaded into the ipython shell until you import them in a fully qualified way (they do not appear in `dir()` so you can get false import errors if you do not do this).** 

```py
# the plugin that is in the main package
>>> from fake_package.plugins import ns_pkg
this is the ns pkg in the main pkg

# plugin_1
>>> from fake_package.plugins import a
>>> a()
'wohoo you have a plugin!'

# plugin_2
>>> from fake_package.plugins.plugin_b import b
>>> b()
'wohoo you have a different plugin!'
```

