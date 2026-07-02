.class public Lcom/amazon/kcp/application/StandaloneApplicationCapabilities;
.super Lcom/amazon/kcp/application/AndroidApplicationCapabilities;
.source "StandaloneApplicationCapabilities.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/persistence/ISecureStorage;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;-><init>(Landroid/content/res/Resources;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/persistence/ISecureStorage;)V

    return-void
.end method

.method public static isChromebook()Z
    .locals 1

    .line 82
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/amazon/kcp/application/StandaloneApplicationCapabilities;->isChromebook(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isChromebook(Landroid/content/Context;)Z
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v0, "org.chromium.arc.device_management"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public canPerformTPH()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isSoftKeyBarFixedForAccessibility()Z
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isSoftKeyBarFixedForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 74
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 75
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isYJSupportedOnDevice()Z
    .locals 2

    .line 36
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->isYJSupportedBySniffTest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->isYJSupportedByBlacklist()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public supportsContentOrientationLock()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneApplicationCapabilities;->isChromebook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->isNewOrientationLockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->shouldAllowOrientationLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
