#!/bin/bash

ng="ng-zorro-antd-master"
react="ant-design-master"
ng_url="https://codeload.github.com/NG-ZORRO/ng-zorro-antd/zip/master"
react_url="https://codeload.github.com/ant-design/ant-design/zip/master"
curl -o ${ng}.zip ${ng_url} -o ${react}.zip ${react_url}
unzip -o ${ng}.zip
unzip -o ${react}.zip
mkdir ${ng}_cmp
mkdir ${react}_cmp
find ${ng}/src/components -name *.less |tar cT -|(cd ${ng}_cmp/;tar x)
find ${react}/components -name *.less |tar cT -|(cd ${react}_cmp/;tar x)
rm -rf ${ng}.zip ${react}.zip ${ng} ${react}
mkdir ${ng}
mkdir ${react}
mv ${ng}_cmp/${ng}/src/components ./${ng}
mv ${react}_cmp/${react}/components ./${react}
rm -rf ${ng}_cmp ${react}_cmp