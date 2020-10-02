#!/usr/bin/env bash

if [[ "$S3_BUCKET" == "" || "$AWS_REGION" == "" ]]; then
    echo "S3_BUCKET and AWS_REGION are required"
    exit 1
fi

if [[ ! -d /s3 ]]; then
    mkdir /s3
fi

s3fs \
    -o passwd_file=$(pwd)/.passwd-s3fs \
    -f \
    -o bucket=$S3_BUCKET \
    -o url="https://$AWS_REGION.amazonaws.com" \
    -o allow_other \
    /s3
