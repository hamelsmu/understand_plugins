pip uninstall fake_package -y
pip uninstall fake_package_plugin_a -y
pip uninstall fake_package_plugin_b -y
rm -r $(find . -name '*.egg-info')
rm -r $(find . -type d -name 'build')

cd main_package
pip install .
cd ../plugin_1/
pip install .
cd ../plugin_2/
pip install .
