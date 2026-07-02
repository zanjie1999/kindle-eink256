.class public Lcom/amazon/nwstd/service/ContentDeletedHandler;
.super Ljava/lang/Object;
.source "ContentDeletedHandler.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/event/IEventHandler<",
        "Ljava/util/Collection<",
        "Lcom/amazon/kindle/content/ContentUpdate;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final HANDLED_EVENT_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const-class v0, Lcom/amazon/nwstd/service/ContentDeletedHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/service/ContentDeletedHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/event/EventType;

    .line 45
    sget-object v1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/service/ContentDeletedHandler;->HANDLED_EVENT_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazon/nwstd/service/ContentDeletedHandler;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 58
    :goto_0
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

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

    .line 116
    sget-object v0, Lcom/amazon/nwstd/service/ContentDeletedHandler;->HANDLED_EVENT_TYPES:Ljava/util/List;

    return-object v0
.end method

.method public handleEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;>;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getType()Lcom/amazon/kindle/event/EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/event/EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v0

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentUpdate;

    .line 67
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    .line 68
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 70
    invoke-static {v3, v2}, Lcom/amazon/nwstd/upsell/UpsellUtils;->isADeletedUpsellContent(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v4, "NewsstandContentExplorerDelete"

    const-string v5, "DeleteTrialContent"

    invoke-virtual {v2, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v2, Lcom/amazon/nwstd/service/ContentDeletedHandler;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    const-string v5, "Reported the whitelistable metric NewsstandContentExplorerDelete, DeleteTrialContent"

    invoke-static {v2, v4, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getIssueId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 75
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 76
    sget-object v5, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v5}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 79
    sget-object v6, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_CONTENT_DELETED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/amazon/nwstd/metrics/loggers/DebugMetricsLogger;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    iget-object v2, p0, Lcom/amazon/nwstd/service/ContentDeletedHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->reportIssueDeletedEvent(Landroid/content/Context;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/HashMap;)V

    .line 86
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 88
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v1

    .line 90
    :cond_1
    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_cover:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v0, v5}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const-string v4, "The number of resources returned is more than one"

    invoke-static {v5, v4}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 94
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 95
    invoke-virtual {v1, v4}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    goto :goto_2

    .line 97
    :cond_4
    iget-object v2, p0, Lcom/amazon/nwstd/service/ContentDeletedHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upsell.coversync.timestamp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/nwstd/storage/KVStorage;->remove(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_5
    if-eqz v1, :cond_7

    .line 103
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 105
    :cond_6
    throw p1

    :cond_7
    :goto_4
    return-void
.end method
