.class public Lcom/amazon/kindle/device/cutout/XiaomiCutoutHelper;
.super Ljava/lang/Object;
.source "XiaomiCutoutHelper.java"

# interfaces
.implements Lcom/amazon/kindle/device/cutout/ICutoutHelper;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final XIAOMI_NOTCH:Ljava/lang/String; = "ro.miui.notch"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/device/cutout/XiaomiCutoutHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/device/cutout/XiaomiCutoutHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasCutout(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v2, "android.os.SystemProperties"

    .line 35
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 37
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    .line 38
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    const-string v4, "getInt"

    .line 39
    invoke-virtual {p1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "ro.miui.notch"

    aput-object v4, v2, v1

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    .line 43
    invoke-virtual {v3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 49
    sget-object v2, Lcom/amazon/kindle/device/cutout/XiaomiCutoutHelper;->TAG:Ljava/lang/String;

    const-string v3, "hasCutoutForXiaomi Exception"

    invoke-static {v2, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 47
    sget-object v2, Lcom/amazon/kindle/device/cutout/XiaomiCutoutHelper;->TAG:Ljava/lang/String;

    const-string v3, "hasCutoutForXiaomi NoSuchMethodException"

    invoke-static {v2, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 45
    sget-object v2, Lcom/amazon/kindle/device/cutout/XiaomiCutoutHelper;->TAG:Ljava/lang/String;

    const-string v3, "hasCutoutForXiaomi ClassNotFoundException"

    invoke-static {v2, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_2
    return v0
.end method


# virtual methods
.method public getPortraitSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 4

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kindle/device/cutout/XiaomiCutoutHelper;->hasCutout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {p1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_0
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {v0, v1, v1, p1, v1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    return-object v0
.end method
