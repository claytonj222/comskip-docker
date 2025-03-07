#!/usr/bin/env bash

# Verify a path was provided
[ -n "$__path" ] || die "path is required"
# Verify the path exists
[ -f "$__path" ] || die "path ($__path) is not a file"

docker run comskip-docker ./post-process.sh $__path

