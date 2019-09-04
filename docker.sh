#!/usr/bin/env bash
docker build -t codersrank_extractor:latest .
REPO_NAME=$(basename $1)
docker run -it --mount type=bind,source="$1"/,target="/$REPO_NAME" --mount type=bind,source="$(pwd)"/,target="/app" codersrank_extractor:latest /$REPO_NAME
