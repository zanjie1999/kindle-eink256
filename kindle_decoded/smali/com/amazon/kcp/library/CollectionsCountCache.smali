.class public Lcom/amazon/kcp/library/CollectionsCountCache;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "CollectionsCountCache.java"

# interfaces
.implements Lcom/amazon/kindle/collections/ICollectionsListener;


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/library/CollectionsCountCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/kcp/library/CollectionsCountCache;

    invoke-direct {v0}, Lcom/amazon/kcp/library/CollectionsCountCache;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/CollectionsCountCache;->INSTANCE:Lcom/amazon/kcp/library/CollectionsCountCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 34
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 35
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/library/CollectionsCountCache;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/kcp/library/CollectionsCountCache;->INSTANCE:Lcom/amazon/kcp/library/CollectionsCountCache;

    return-object v0
.end method


# virtual methods
.method public onCollectionItemsDeleted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCollectionItemsUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCollectionSyncComplete()V
    .locals 0

    return-void
.end method

.method public onCollectionsDeleted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    neg-int p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public onCollectionsUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    .line 64
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public onKRXAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-wide/16 v0, -0x1

    .line 55
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
