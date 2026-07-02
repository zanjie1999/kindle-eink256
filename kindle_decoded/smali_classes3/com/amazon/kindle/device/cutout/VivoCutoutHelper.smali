.class public Lcom/amazon/kindle/device/cutout/VivoCutoutHelper;
.super Ljava/lang/Object;
.source "VivoCutoutHelper.java"

# interfaces
.implements Lcom/amazon/kindle/device/cutout/ICutoutHelper;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VIVO_NOTCH_FLAG:I = 0x20

.field private static final VIVO_NOTCH_HEIGHT_DP:I = 0x1b


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kindle/device/cutout/VivoCutoutHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/device/cutout/VivoCutoutHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasCutout(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 32
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "android.util.FtFeature"

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "isFeatureSupport"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 34
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x20

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 36
    sget-object p1, Lcom/amazon/kindle/device/cutout/VivoCutoutHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this VIVO device has notch in screen\uff1f"

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

    .line 42
    sget-object v1, Lcom/amazon/kindle/device/cutout/VivoCutoutHelper;->TAG:Ljava/lang/String;

    const-string v2, "hasNotchForVivo Exception"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 40
    sget-object v1, Lcom/amazon/kindle/device/cutout/VivoCutoutHelper;->TAG:Ljava/lang/String;

    const-string v2, "hasNotchForVivo NoSuchMethodException"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 38
    sget-object v1, Lcom/amazon/kindle/device/cutout/VivoCutoutHelper;->TAG:Ljava/lang/String;

    const-string v2, "hasNotchForVivo ClassNotFoundException"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method


# virtual methods
.method public getPortraitSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kindle/device/cutout/VivoCutoutHelper;->hasCutout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {p1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    const/high16 v1, 0x41d80000    # 27.0f

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 26
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, v1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    return-object v0
.end method
