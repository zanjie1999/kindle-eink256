.class public abstract Lcom/audible/hushpuppy/extensions/switchto/AbstractFireAudiobookSwitcher;
.super Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;
.source "AbstractFireAudiobookSwitcher.java"


# static fields
.field protected static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected final context:Landroid/content/Context;

.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/IAudibleDebugHelper;

.field protected final model:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/extensions/switchto/AbstractFireAudiobookSwitcher;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/extensions/switchto/AbstractFireAudiobookSwitcher;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method


# virtual methods
.method public final hasStore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final switchToEBook()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final switchToMatchmaker(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractFireAudiobookSwitcher;->debugHelper:Lcom/audible/hushpuppy/common/debug/IAudibleDebugHelper;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/debug/IAudibleDebugHelper;->isAudibleWebviewOnFOSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-super {p0, p1}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToMatchmaker(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractFireAudiobookSwitcher;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/upsell/StoreSource;->getSourceCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/audible/hushpuppy/common/system/IntentUtils;->launchAtosMatchmakerIntent(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final switchToUpgrader(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractFireAudiobookSwitcher;->debugHelper:Lcom/audible/hushpuppy/common/debug/IAudibleDebugHelper;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/debug/IAudibleDebugHelper;->isAudibleWebviewOnFOSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-super {p0, p1}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToUpgrader(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractFireAudiobookSwitcher;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractFireAudiobookSwitcher;->model:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractFireAudiobookSwitcher;->model:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v2

    .line 77
    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAmazonAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    .line 76
    invoke-static {v0, v1, v2, p1}, Lcom/audible/hushpuppy/common/system/IntentUtils;->launchAtosUpsellIntent(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StoreSource;)V

    .line 78
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->NavMenuAddNarration:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
