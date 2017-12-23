#!/bin/bash

ng="ng-zorro-antd-master"
react="ant-design-master"
ng_url="https://codeload.github.com/NG-ZORRO/ng-zorro-antd/zip/master"
react_url="https://codeload.github.com/ant-design/ant-design/zip/master"

curl -o ${ng}.zip ${ng_url} -o ${react}.zip ${react_url}

unzip -o ${ng}.zip
unzip -o ${react}.zip

rm -rf ${ng}.zip ${react}.zip
