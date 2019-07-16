#!/usr/bin/env bash

set -ex

bundle exec middleman build
pushd build
aws s3 sync --delete . s3://www.ruma.io
aws cloudfront create-invalidation --distribution-id E2OENHN48B3NC4 --paths '/*'
