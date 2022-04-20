## 将原apk包解压成文件夹.(其实apk包就是普通的zip压缩包,也可以直接使用unzip解压缩)
apktool d test.apk -o new
或
unzip test.apk -d ./new    // 这种方式解压后android内部的二进制文件无法解读
## 将原来分析后的apk文件压缩成.apk包
apktool b new -o new.apk
或
zip -r new.apk ./new
注：建议使用 apktool 处理apk包，apktool解压apk包后会以smali格式显示便于后续分析.


## 生成签名所需的证书 keytool 在jdk里
keytool -genkey -alias dio -keyalg RSA -validity 3650 -keystore dio.keystore

## 签名 jarsigner 在jdk里
jarsigner -verbose -keystore dio.keystore -signedjar new_signed.apk new.apk dio
