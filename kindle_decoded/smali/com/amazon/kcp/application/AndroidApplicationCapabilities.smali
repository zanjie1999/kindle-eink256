.class public abstract Lcom/amazon/kcp/application/AndroidApplicationCapabilities;
.super Ljava/lang/Object;
.source "AndroidApplicationCapabilities.java"


# static fields
.field private static final DEMO_MODE:Ljava/lang/String; = "demoMode"

.field protected static demoModeForced:Z = false


# instance fields
.field private authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field protected isInDemoMode:Z

.field private resource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/persistence/ISecureStorage;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->resource:Landroid/content/res/Resources;

    const-string p1, "demoMode"

    .line 49
    invoke-interface {p3, p1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    return-void
.end method


# virtual methods
.method public arePeriodicalsSupported()Z
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->resource:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/krl/R$bool;->periodicals_supported:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public canChangeRegistrationSettings()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canGotoStore()Z
    .locals 3

    .line 87
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 91
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 92
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandPurchaseBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 102
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->isDefaultAccount(Lcom/amazon/kindle/services/authentication/IAccountInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public canPerformSync()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract canPerformTPH()Z
.end method

.method public getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;
    .locals 3

    if-eqz p2, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isSoftKeyBarFixedForAccessibility()Z

    move-result p2

    if-nez p2, :cond_1

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    .line 191
    invoke-static {p2}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 193
    :cond_0
    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->getDeviceScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1

    :cond_1
    const-string/jumbo p2, "window"

    .line 196
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_4

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 203
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 204
    invoke-virtual {p2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 p2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_2

    .line 206
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_2

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    add-float/2addr v1, p2

    float-to-int v1, v1

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    if-eqz p1, :cond_3

    .line 209
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz p1, :cond_3

    int-to-float p1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    add-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_1

    :cond_3
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 213
    :goto_1
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2

    .line 216
    :cond_4
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 217
    invoke-virtual {p2, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object p1
.end method

.method public isInDemoMode()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->demoModeForced:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isSoftKeyBarFixedForAccessibility()Z
    .locals 2

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 232
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubpixelRenderingRotated(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isYJSupportedOnDevice()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsContentOrientationLock()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsPinchToChangeFontSize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubPixelRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsTwoFingerSwipeForBrightness()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
