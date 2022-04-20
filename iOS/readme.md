iOS ipa 包重签名

## 1. 准备工作
### 1.1 证书:
必需得付费开发证书(未付费的开发证书不能重签名),从苹果官网下载后安装到本地Mac上
可以从钥匙串或Xcode中查看
或者
用下面这条命令获取本地已安装的开发者证书
security find-identity -p codesigning -v

### 1.2 ipa安装包
需要已经脱壳的ipa包，我一般是在越狱的手机上通过 frida-ios-dump 脱壳,获取ipa安装包的
查看ipa包中 可执行文件是否加密,加密后无法重签名
otool -l WeChat | grep crypt
cryptid  0 未加密   1 加密

### 1.3 描述文件
#### 1.3.1 获取描述文件
Xcode 新建一个空工程, Bundle identity : com.xx.xx。在手机上运行项目,然后在 Xcode 的 Products/xxx.app 里获取 embedded.mobileprovision ,这个描述文件描述的是可运设备信息。
或者
到苹果开发者官网登账号，在 Profiles 里把对应的描述文件 Download 下来。
下载描述文件时要注意可安装设备的uuid列表,只有列表里对应的设备才允许安装签名后的ipa
或者(最好)
用Xcode打一个Ad Hoc 包 (adhoc.ipa)，解压进入ipa包获取描述文件 embedded.mobileprovision
#### 1.3.2 制作签名所需要的权限信息
查看描述文件
security cms -D -i embedded.mobileprovision
生成新的 entitlements.plist
Entitlements 是应用功能和授权相关的文档，涉及到 iCloud、推送等功能的配置信息。可以通过开发环境配置文档重新生成一份，后面签名要用到
security cms -D -i embedded.mobileprovision > profile.plist
上面会生成一个完整的 plist，我们只需要里面的Entitlements字段，执行命令行：
/usr/libexec/PlistBuddy -x -c 'Print :Entitlements' profile.plist > entitlements.plist


## 2. 处理ipa包
解压ipa包
unzip -q xxx.ipa
删除插件（例如Watch、Plugins）
rm -rf Payload/xxx.app/Watch 
rm -rf Payload/xxx.app/Plugins
移除之前的签名文档夹：
rm -rf Payload/xxx.app/_CodeSignature

把描述文件放到 Payload/xxx.app里
cp embedded.mobileprovision Payload/xxx.app

给可执行文件权限
chmod +x Payload/xxx.app/xxx

info.plist文件的BundleID要和描述文件中的BundleID保持一致
open Payload/xxx.app/Info.plist 
在打开的Info.plist文件里 找到相应的Bundle identity 替换成描述文件里的BundleID
或者通过命令行修改，如修改发布版本信息:
/usr/libexec/PlistBuddy -c "Set :CFBundleIdentifier com.xx.xx" Payload/xxx.app/Info.plist


## 3. 开始签名
重新签名有顺序，先把framework和dylib签名，最后再签名xxx.app/xxx，顺序弄错了，就算签名成功也可能会安装失败!
重新签名 framework：
codesign -f -s "iPhone Distribution: xxxx (xx)" --entitlements entitlements.plist Payload/xxx.app/Frameworks/*.framework
codesign -f -s "iPhone Distribution: xxxx (xx)" --entitlements entitlements.plist Payload/xxx.app/Frameworks/*.dylib
重新签名应用的执行文件:
codesign -f -s "iPhone Distribution: xxxx (xx)" --entitlements entitlements.plist Payload/xxx.app/xxx

## 4. 生成新的ipa
zip -rq newapp.ipa Payload/

## 5. 安装和调试
描述文件uuid列表，所有已注册了的设备都可以安装这个 ipa

Xcode或爱思助手等装到手机上(这些手机必须是已经在开发者官网注册的设备).如果打开App可以正常执行那整个重签名过程就完成了.
