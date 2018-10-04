# -*- coding: utf-8 -*-

#
# First attempt at making a canonical python package for pyqgis. 
#
# Date Created: September 27, 2018
# Author: Michael E. Tryby
#         US EPA ORD/NRMRL
#

try:
    from setuptools import find_packages, setup, Distribution
except ImportError:
    from distutils.core import find_packages, setup, Distribution


class BinaryDistribution(Distribution):
	def has_ext_modules(self):
		return True


setup(
	name = "pyqgis",
	version = "0.0.0",

	packages = find_packages() + ['PyQt5'],
#	namespace_packages = ['qgis'],
    
    package_data = {'qgis': ['_*.pyd', '*.dll']},
	include_package_data = True,
	distclass = BinaryDistribution,

	install_requires = [
		'PyQt5==5.9'
	]
)