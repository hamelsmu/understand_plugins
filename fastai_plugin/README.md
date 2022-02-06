This is a minimal example of how you can add a namespace package to any normal package.  We will use [fastai](https://www.github.com/fastai/fastai) as an example.

Install `fastai` if you have not already

```bash
pip install fastai
```

Install this package (by the way this doesn't work with an editable install):

```bash
pip install .
```

Now, you can import `fastai.hamel` and it works

```bash
>>> from fastai.hamel import a
>>> a()
'wohoo you have a plugin!'
```

Pretty wild.  Its like pip-installable monkey patching.
