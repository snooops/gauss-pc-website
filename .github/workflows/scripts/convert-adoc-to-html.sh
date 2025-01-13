#!/bin/bash

#!/bin/bash
set -e

CURRENT_PATH=`pwd`
echo $CURRENT_PATH
ASCIIDOCTOR_PDF_DIR=`gem contents asciidoctor-pdf --show-install-dir`

# -a, --attribute=ATTRIBUTE
# -B, --base-dir=DIR
# -D, --destination-dir=DIR
# -o, --out-file=OUT_FILE
# -R, --source-dir=DIR
# -b, --backend=BACKEND
# -d, --doctype=DOCTYPE
# -r, --require=LIBRARY

# Output HTML
mkdir -p ./website/outputs/html
asciidoctor -B ${CURRENT_PATH}/website/src -D ${CURRENT_PATH}/website/outputs/html/ -o index.html -r asciidoctor-diagram ${CURRENT_PATH}/website/src/index.adoc

cp -r ${CURRENT_PATH}/website/src/images outputs/html