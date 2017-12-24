#!/bin/bash

react="ant-design-master"
git checkout -b ${react}
cp -r ${react}/components/** ./components
git add ./components/
git commit -m $(date '+%s')
git checkout master