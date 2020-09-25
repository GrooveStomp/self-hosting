s3fs \
    -o passwd_file=$(pwd)/.passwd-s3fs \
    -f \
    -o bucket=yowx4y2arto4sdc5wkoaedir \
    -o url="https://s3-us-east-2.amazonaws.com" \
    -o allow_other \
    $(pwd)/s3
