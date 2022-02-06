This is a minimal example of how you can add a namespace package to any normal package

Install this package (by the way this doesn't work with an editable install):

```
pip install .
```

Now, you can import `metaflow.hamel` and it works

```bash
>>> from metaflow.hamel import a
>>> a()
'wohoo you have a plugin!'
```

Pretty wild.  Its like pip-installable monkey patching.