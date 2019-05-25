#! /bin/bash

bucketpath="$(pwd)/tests/bucket"
echo "Check valid file."
if ! docker run --rm -v "${bucketpath}":/bucket lintyaml valid.yml
then
    echo "Validation failed!"
    exit 1
fi
echo "Validation passed."

echo "Check invalid file."
if docker run --rm -v "${bucketpath}":/bucket lintyaml invalid.yml
then
    echo "Validation failed!"
    exit 1
fi
echo "Validation passed."
exit 0
