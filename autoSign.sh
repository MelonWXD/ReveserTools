#!/bin/bash
while getopts ":o:i:" opt;
do
    case $opt in
        i)
        input_file=$OPTARG
        ;;
        o)
        output_file=$OPTARG
        ;;
        ?)
        echo "-o 输出签名后的apk位置 -i未签名apk"
        exit 1;;
    esac
done
echo `eval echo '$'"${input_file}test"`
key_file='/Users/wengxiaodong/ReverseTools/keyStore/resign.keystore'
key_alias='reverse'
key_passwd='wxd123'
jarsigner -verbose -keystore ${key_file} -storepass ${key_passwd} -signedjar ${output_file} ${input_file} ${key_alias}
