from setuptools import setup, find_namespace_packages

setup(
    name='fake_package_bar_a',
    version='1',
    description='',
    long_description='',
    author='Hamel Husain',
    author_email='satya@microsoft.com',
    license='Apache Software License',
    packages=find_namespace_packages(include=['fake_package.*']),
)