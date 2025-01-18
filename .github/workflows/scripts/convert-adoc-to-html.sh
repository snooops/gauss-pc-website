#!/bin/bash

#!/bin/bash
set -e

CURRENT_PATH=`pwd`
echo ${CURRENT_PATH}
ls -la ${CURRENT_PATH}
ASCIIDOCTOR_PDF_DIR=`gem contents asciidoctor-pdf --show-install-dir`


echo "/home/runner/work/meyer-pc-website/meyer-pc-website"
ls -la /home/runner/work/meyer-pc-website/meyer-pc-website

# -a, --attribute=ATTRIBUTE
# -B, --base-dir=DIR
# -D, --destination-dir=DIR
# -o, --out-file=OUT_FILE
# -R, --source-dir=DIR
# -b, --backend=BACKEND
# -d, --doctype=DOCTYPE
# -r, --require=LIBRARY

# Output HTML
mkdir -p ${CURRENT_PATH}/outputs/html
asciidoctor -B ${CURRENT_PATH}/src -D ${CURRENT_PATH}/outputs/html/ -o index.html -a docinfo=shared ${CURRENT_PATH}/src/index.adoc

cp -r ${CURRENT_PATH}/assets/* ${CURRENT_PATH}/outputs/html/
ls -la ${CURRENT_PATH}/outputs/html/