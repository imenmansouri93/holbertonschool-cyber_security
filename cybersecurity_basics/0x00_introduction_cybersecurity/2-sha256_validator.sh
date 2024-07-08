#!/bin/bash
echo "$2 *$1" > test_file
echo "$(sha256sum test_file)" | grep -q '^e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'