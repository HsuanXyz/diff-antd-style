#!/bin/bash

ng="ng-zorro-antd-master"
git checkout -b ${ng}
cp -r ${ng}/components/** ./components
git add ./components/
git commit ./components/ -m $(date)
git checkout master
