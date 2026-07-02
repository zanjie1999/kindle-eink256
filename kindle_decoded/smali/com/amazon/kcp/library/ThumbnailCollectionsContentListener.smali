.class public Lcom/amazon/kcp/library/ThumbnailCollectionsContentListener;
.super Lcom/amazon/kcp/library/CollectionsContentListener;
.source "ThumbnailCollectionsContentListener.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/PausableListener$Callback;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/CollectionsContentListener;-><init>(Lcom/amazon/kcp/library/PausableListener$Callback;Z)V

    .line 25
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onCollectionThumbnailCacheUpdated(Lcom/amazon/kcp/cover/CollectionThumbnailCache$CollectionThumbnailCacheUpdateEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/CollectionThumbnailCache$CollectionThumbnailCacheUpdateEvent;->getRefreshType()Lcom/amazon/kindle/event/EventType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

    return-void
.end method
