#!/bin/sh

#
# open the source file for a python module by module name
#
# Usage: vimpy MODULE_NAME
#
# for ex, httplib
# $ vimpy httplib
# will open /usr/lib64/python2.7/httplib.py
#
# Note: Doesn't understand c modules/.so's 
module_name="${1}"
pycli="import ${module_name} as the_module; f=the_module.__file__; print f if f.endswith('py') else f[:-1]"
pyfile=$(python -c "${pycli}")
vim "${pyfile}"
