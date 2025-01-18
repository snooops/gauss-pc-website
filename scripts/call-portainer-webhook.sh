#!/bin/bash
# exit on error
set -e

# call curl
curl -X POST -s ${{ secrets.PORTAINER_WEBHOOK }}