.class public Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;
.super Ljava/lang/Object;
.source "HuaweiCutoutHelper.java"

# interfaces
.implements Lcom/amazon/kindle/device/cutout/ICutoutHelper;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasCutout(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 46
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "hasNotchInScreen"

    new-array v2, v0, [Ljava/lang/Class;

    .line 48
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 49
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 50
    sget-object p1, Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this HuaWei device has notch in screen? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    sget-object v1, Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;->TAG:Ljava/lang/String;

    const-string v2, "hasCutoutForHuaWei Exception"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 54
    sget-object v1, Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;->TAG:Ljava/lang/String;

    const-string v2, "hasCutoutForHuaWei NoSuchMethodException"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 52
    sget-object v1, Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;->TAG:Ljava/lang/String;

    const-string v2, "hasCutoutForHuaWei ClassNotFoundException"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method


# virtual methods
.method public getPortraitSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 3

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;->hasCutout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {p1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getNotchSize"

    new-array v2, v0, [Ljava/lang/Class;

    .line 27
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 28
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_1

    .line 29
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    .line 30
    aget p1, p1, v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 37
    sget-object v1, Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;->TAG:Ljava/lang/String;

    const-string v2, "getHuaWeiSafeInsets Exception"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 35
    sget-object v1, Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;->TAG:Ljava/lang/String;

    const-string v2, "getHuaWeiSafeInsets NoSuchMethodException"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 33
    sget-object v1, Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;->TAG:Ljava/lang/String;

    const-string v2, "getHuaWeiSafeInsets ClassNotFoundException"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 40
    :goto_1
    new-instance v1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {v1, v0, v0, p1, v0}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    return-object v1
.end method
