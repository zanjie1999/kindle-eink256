.class public final Lcom/amazon/kcp/util/OrientationLockUtils;
.super Ljava/lang/Object;
.source "OrientationLockUtils.kt"


# static fields
.field private static final ORIENTATION_LOCK_MOVED_TUTORIAL_ID:Ljava/lang/String; = "0973920bda69e1c06b598027e2a06cfb"

.field private static final WEBLAB_TREATMENT_C:Ljava/lang/String; = "C"

.field private static final newOrientationLockWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/amazon/kcp/util/OrientationLockUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/OrientationLockUtils;-><init>()V

    .line 17
    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "KINDLE_ANDROID_APPCORE_NEW_ORIENTATION_LOCK_251193"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/util/OrientationLockUtils;->newOrientationLockWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isNewOrientationLockEnabled()Z
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kcp/util/OrientationLockUtils;->newOrientationLockWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-virtual {v0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isNewOrientationLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isOrientationLockTapEnabled()Z
    .locals 4

    .line 28
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFAEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v2, "Utils.getFactory()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "KINDLE_ANDROID_APPCORE_ROTATIONLOCK_TAP_313822"

    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 33
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v2

    .line 34
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isOrientationLockTapEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "C"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method public static final isOrientationLockTapTutorialShown()Z
    .locals 2

    .line 44
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    const-string v1, "0973920bda69e1c06b598027e2a06cfb"

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->isAlreadyShown(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final shouldAllowOrientationLock()Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isWindowsDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
