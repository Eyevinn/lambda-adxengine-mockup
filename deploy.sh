#!/bin/bash
LAMBDA_FUNCTION="adxengine-mockup"

if [ ! -f "./dist/bundle.zip" ] ; then echo "No bundle found - have you built it first?" ; exit 1 ; fi

aws --region eu-west-1 lambda get-function --function-name $LAMBDA_FUNCTION && \
aws --region eu-west-1 lambda update-function-code --zip-file 'fileb://./dist/bundle.zip' --function-name $LAMBDA_FUNCTION
