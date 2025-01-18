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
asciidoctor -B ${CURRENT_PATH}/src -D ${CURRENT_PATH}/output/html/ -o index.html -a docinfo=shared ${CURRENT_PATH}/src/index.adoc
