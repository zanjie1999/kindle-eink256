.class public Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;
.super Ljava/lang/Object;
.source "ContentDeletedFromCloudHandler.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/event/IEventHandler<",
        "Ljava/util/Collection<",
        "Ljava/lang/String;",
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

.field private mLibraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const-class v0, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/event/EventType;

    .line 43
    sget-object v1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_DELETE:Lcom/amazon/kindle/event/EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;->HANDLED_EVENT_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;->mLibraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 61
    iput-object p1, p0, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;->mLibraryService:Lcom/amazon/kindle/content/ILibraryService;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 63
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

    .line 68
    sget-object v0, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;->HANDLED_EVENT_TYPES:Ljava/util/List;

    return-object v0
.end method

.method public handleEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getType()Lcom/amazon/kindle/event/EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_DELETE:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/event/EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 76
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

    check-cast v2, Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;->mLibraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v0, v4}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getUpsellOrigin(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 80
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v5, "NewsstandContentExplorerDelete"

    const-string v6, "DeleteTrialContent"

    invoke-virtual {v3, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v3, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;->TAG:Ljava/lang/String;

    const/4 v5, 0x4

    const-string v6, "Reported the whitelistable metric NewsstandContentExplorerDelete, DeleteTrialContent"

    invoke-static {v3, v5, v6}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getIssueId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 84
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 85
    sget-object v6, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v6}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 88
    sget-object v7, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_CONTENT_DELETED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/amazon/nwstd/metrics/loggers/DebugMetricsLogger;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    iget-object v3, p0, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v5}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->reportIssueDeletedEvent(Landroid/content/Context;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/HashMap;)V

    if-nez v1, :cond_1

    .line 95
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v1

    .line 97
    :cond_1
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 98
    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_cover:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v5, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v0, v6}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 99
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const-string v5, "The number of resources returned is more than one"

    invoke-static {v4, v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 102
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 103
    invoke-virtual {v1, v4}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->removeResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    goto :goto_2

    .line 105
    :cond_4
    iget-object v3, p0, Lcom/amazon/nwstd/service/ContentDeletedFromCloudHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upsell.coversync.timestamp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/nwstd/storage/KVStorage;->remove(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_5
    if-eqz v1, :cond_7

    .line 111
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

    .line 113
    :cond_6
    throw p1

    :cond_7
    :goto_4
    return-void
.end method
