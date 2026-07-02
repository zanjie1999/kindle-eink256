.class public abstract Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;
.super Ljava/lang/Object;
.source "AbstractAudiobookSwitcher.java"


# instance fields
.field protected final mHushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field protected final mkindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method protected constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mkindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 38
    iput-object p2, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mHushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    return-void
.end method


# virtual methods
.method public getAmazonAudiobookAsin()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mHushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAmazonAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/extensions/switchto/AbstractFireAudiobookSwitcher;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Current relationship is null, cannot retrieve AmazonAudioBookAsin"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract hasStore()Z
.end method

.method public abstract switchToAudiobook()Z
.end method

.method public abstract switchToEBook()Z
.end method

.method public switchToMatchmaker(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z
    .locals 2

    .line 89
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object p1

    sget-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->OPEN_MATCHMAKER:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->startMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 91
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mkindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/store/activity/MatchMakerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mkindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public switchToUpgrader(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->getAmazonAudiobookAsin()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 71
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    sget-object v1, Lcom/audible/android/kcp/store/activity/UpgraderActivity;->EXTRA_KEY_ASIN:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mkindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/audible/android/kcp/store/activity/UpgraderActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mkindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
