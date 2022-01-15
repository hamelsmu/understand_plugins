pip uninstall fake_package -y
pip uninstall fake_package_plugin_a -y
rm -r $(find . -name '*.egg-info')

cd main_package
pip install .
cd ../plugin_1/
pip install .