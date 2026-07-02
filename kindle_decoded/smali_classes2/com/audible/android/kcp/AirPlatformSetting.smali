.class public final Lcom/audible/android/kcp/AirPlatformSetting;
.super Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;
.source "AirPlatformSetting.java"


# instance fields
.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/audible/android/kcp/AirPlatformSetting;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public isBadgeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPersistentPlayerEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAirPlatform()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAiRMetricsManager()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/android/kcp/AirPlatformSetting;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method public showJit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
