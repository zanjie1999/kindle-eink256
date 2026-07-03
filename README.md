# 咩Kindle
逆向了Kindle_8.51.1.0(1.3.272119.0)  
也就是最后一个可以在arm32上运行的Kindle App  
加入了之前写的[eink256](https://github.com/zanjie1999/eink256)中的抖动实现部分的native  
让图片渲染实现16阶灰度抖256阶灰度显示（4bit抖8bit Floyd-Steinberg），让墨水屏体验更好

#### 额外修改
- 开启墨水屏优化
- 尝试将默认url从cn改为com，中亚已经登不上去了
- 关闭翻页动画
- 方向键DPAD支持，方便在没有触摸屏的设备上使用

### 点击右侧的Releases下载apk安装即可
黑白用`kindle_eink256`，彩墨用`kindle_no_eink256`
### 禁止商用

## 额外说明
先点一下商店看一下是不是404,如果是,你登录的是中亚，也就是cn后缀的  
无法登录的，请把系统语言设置成英语，因为简体中文可能会跳到cn后缀的亚马逊，他已经退出中国大陆了

把项目拉下来的时候你可能会需要这条命令
```
git config --global core.longpaths true 
```