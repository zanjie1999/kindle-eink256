.class public Lcom/amazon/kindle/util/KRIFUtils;
.super Ljava/lang/Object;
.source "KRIFUtils.java"


# direct methods
.method public static convertToKRXPositionRange(Lcom/amazon/krf/platform/PositionRange;)Lcom/amazon/android/docviewer/IPositionRange;
    .locals 2

    .line 63
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-virtual {p0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    .line 64
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-virtual {p0}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    .line 66
    new-instance p0, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object p0
.end method

.method public static getAndroidOrientationFromKRFOrientation(Lcom/amazon/krf/platform/OrientationLockRequest$Orientation;)I
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kindle/util/KRIFUtils$1;->$SwitchMap$com$amazon$krf$platform$OrientationLockRequest$Orientation:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 39
    sget-object p0, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->convertToScreenOrientation(Lcom/amazon/kindle/model/content/BookOrientation;)I

    move-result p0

    return p0

    .line 35
    :cond_0
    sget-object p0, Lcom/amazon/kindle/model/content/BookOrientation;->LANDSCAPE:Lcom/amazon/kindle/model/content/BookOrientation;

    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->convertToScreenOrientation(Lcom/amazon/kindle/model/content/BookOrientation;)I

    move-result p0

    return p0

    .line 32
    :cond_1
    sget-object p0, Lcom/amazon/kindle/model/content/BookOrientation;->PORTRAIT:Lcom/amazon/kindle/model/content/BookOrientation;

    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->convertToScreenOrientation(Lcom/amazon/kindle/model/content/BookOrientation;)I

    move-result p0

    return p0
.end method

.method public static shouldEnableAccessibilityPageTurnSupport(Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->isKrfAccessibilityPageTurnSupportDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 71
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 72
    invoke-static {p1}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object p0

    sget-object p1, Lcom/amazon/kindle/content/KindleContentFormat;->YJLR:Lcom/amazon/kindle/content/KindleContentFormat;

    if-ne p0, p1, :cond_0

    .line 73
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 76
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->getFireOSVersion()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "5.3.3"

    .line 79
    invoke-static {p0, p1}, Lcom/amazon/kindle/build/BuildInfo;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
