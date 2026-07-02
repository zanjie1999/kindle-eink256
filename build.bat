@echo off
chcp 65001 >nul
setlocal

java -jar tools\apktool_2.9.3.jar b kindle_decoded -o kindle_eink256_unsigned_pkg.apk

java -jar tools\uber-apk-signer-1.3.0.jar --apks kindle_eink256_unsigned_pkg.apk --ks androidDev.keystore --ksAlias sparkleandroiddev --ksKeyPass 

if errorlevel 1 exit /b %errorlevel%

endlocal
