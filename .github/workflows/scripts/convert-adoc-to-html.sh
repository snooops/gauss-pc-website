#!/bin/bash

#!/bin/bash
set -e

CURRENT_PATH=`pwd`
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
mkdir -p ./outputs/html
asciidoctor -B ${CURRENT_PATH}/src -D ${CURRENT_PATH}/outputs/html/ -o index.html -r asciidoctor-diagram ${CURRENT_PATH}/src/index.adoc

cp -r ${CURRENT_PATH}/src/images outputs/html