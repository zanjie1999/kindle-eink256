.class public Lcom/amazon/kcp/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static portraitSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kcp/util/DeviceUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/DeviceUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPortraitSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 3

    .line 62
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/amazon/kcp/util/DeviceUtils;->getSafeInsetsInMultiWindow()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    sget-object v0, Lcom/amazon/kcp/util/DeviceUtils;->portraitSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    if-eqz v0, :cond_1

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {v0}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_2

    .line 74
    const-class v1, Lcom/amazon/kcp/util/device/ISafeInsetsDetector;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/util/device/ISafeInsetsDetector;

    if-eqz v1, :cond_2

    .line 76
    invoke-interface {v1, p0}, Lcom/amazon/kcp/util/device/ISafeInsetsDetector;->getPortraitSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    .line 80
    :cond_2
    sput-object v0, Lcom/amazon/kcp/util/DeviceUtils;->portraitSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    return-object v0
.end method

.method public static getSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 1

    const-string/jumbo v0, "window"

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    invoke-static {p0, v0}, Lcom/amazon/kcp/util/DeviceUtils;->getSafeInsetsForRotation(Landroid/content/Context;I)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p0

    return-object p0
.end method

.method private static getSafeInsetsForRotation(Landroid/content/Context;I)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 3

    .line 116
    invoke-static {p0}, Lcom/amazon/kcp/util/DeviceUtils;->getPortraitSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result p1

    .line 141
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v0

    .line 142
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v1

    .line 143
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result p0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result p1

    .line 134
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v0

    .line 135
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v1

    .line 136
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result p0

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result p1

    .line 128
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v0

    .line 129
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v1

    .line 130
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result p0

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result p1

    .line 122
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v0

    .line 123
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v1

    .line 124
    invoke-virtual {p0}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result p0

    .line 147
    :goto_0
    new-instance v2, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    return-object v2
.end method

.method private static getSafeInsetsInMultiWindow()Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 1

    .line 91
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {v0}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    return-object v0
.end method

.method public static isEinkScreen(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static setMIUIStatusBarMode(Landroid/view/Window;Lcom/amazon/kindle/krx/theme/Theme;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "android.view.MiuiWindowManager$LayoutParams"

    .line 46
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "setExtraFlags"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 49
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 50
    sget-object v3, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p1, v3, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 52
    :catch_0
    sget-object p0, Lcom/amazon/kcp/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string p1, "Set MIUI status bar failed. Maybe current device is not running MIUI"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
