BRANCH="$1"

if [ $1 = "develop" ]; then
    aws --region=us-west-1 s3 sync "build/html/" s3://doc.staging.superawesome.tv/sa-web-sdk/
else
    aws --region=us-west-1 s3 sync "build/html/" s3://doc.superawesome.tv/sa-web-sdk/
fi
