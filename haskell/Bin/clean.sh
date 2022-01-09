#!/bin/sh

echo "Copyright (C) 2022 EmptyWork"

cd ..

find . -type f -name "*.o" -print0 | xargs -0 rm -rfv
find . -type f -name "*.hi" -print0 | xargs -0 rm -rfv