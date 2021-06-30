#!/bin/bash
set -e

package_dir="${1%/}"

python3 /vulnfunc/javascript/gen_package_cg.py -i package_dir -o cg.json


#echo Testing call graph generator on import_from_inside package 
#python3 src/gen_package_cg.py -i test/import_from_inside/ -o cg.json 
#echo Printing resulting call graph: 
cat cg.json 