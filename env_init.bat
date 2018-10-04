::
::   env_init.bat - Initializes environment to run qgs-pack under conda
::
::   Date Created: October 1, 2018
::   Author: Michael E. Tryby
::           US EPA ORD/NRMRL
::

set QGIS_PREFIX_PATH=%CONDA_PREFIX%\Lib\site-packages\qgis\_prefix

set PATH=%CONDA_PREFIX%\Library\bin;%CONDA_PREFIX%\Lib\site-packages\qgis\_bin;%CONDA_PREFIX%\Lib\site-packages\PyQt5\Qt\bin;%PATH%

set GDAL_DATA=%CONDA_PREFIX%\Library\share\epsg_csv

set QT_QPA_PLATFORM_PLUGIN_PATH=%CONDA_PREFIX%\lib\site-packages\PyQt5\Qt\plugins\platforms
