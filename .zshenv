# Environmen variables
#
typeset -U PYTHONPATH
typeset -U LD_LIBRARY_PATH

export PYTHONPATH=${HOME}/Projects/Kratos/bin/current
export PYTHONPATH=${PYTHONPATH}:${HOME}/Projects/Kratos/applications/MultiscaleROMApplication/offline_scripts
export PYTHONPATH=${PYTHONPATH}:${HOME}/Projects/meshio
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${HOME}/Projects/Kratos/bin/current/libs

typeset -U PATH path
path=("$HOME/Apps/bin" "$path[@]")
export PATH
