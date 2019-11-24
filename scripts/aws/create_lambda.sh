#!/bin/sh

name=$1
role=$2

aws lambda create-function \
    --function-name ${name} \
    --runtime python3.7 \
    --zip-file fileb://scripts/lambda_function.py.zip \
    --handler lambda_function.lambda_handler \
    --environment Variables={ENDPOINT_NAME=${name}} \
    --publish \
    --role ${role}