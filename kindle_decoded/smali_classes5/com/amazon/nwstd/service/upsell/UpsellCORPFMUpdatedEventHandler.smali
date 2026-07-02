.class public Lcom/amazon/nwstd/service/upsell/UpsellCORPFMUpdatedEventHandler;
.super Ljava/lang/Object;
.source "UpsellCORPFMUpdatedEventHandler.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/event/IEventHandler<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/amazon/kcp/application/IAuthenticationManager;->COR_PFM_UPDATED:Lcom/amazon/kindle/event/EventType;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 33
    sget-object v0, Lcom/amazon/kcp/application/IAuthenticationManager;->COR_PFM_UPDATED:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getType()Lcom/amazon/kindle/event/EventType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/event/EventType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 35
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->clearUpsellData()V

    .line 47
    invoke-static {p1}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->launchOneShotFullSync(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandContentExplorerCampaign"

    const-string v1, "CECORPFMUpdate"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
