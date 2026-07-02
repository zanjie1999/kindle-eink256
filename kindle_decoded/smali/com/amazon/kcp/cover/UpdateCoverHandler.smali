.class public Lcom/amazon/kcp/cover/UpdateCoverHandler;
.super Ljava/lang/Object;
.source "UpdateCoverHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/UpdateCoverHandler$IUpdateCover;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cover:Lcom/amazon/kcp/cover/UpdateCoverHandler$IUpdateCover;

.field private libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kcp/cover/UpdateCoverHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/UpdateCoverHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/cover/UpdateCoverHandler$IUpdateCover;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler;->cover:Lcom/amazon/kcp/cover/UpdateCoverHandler$IUpdateCover;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/cover/UpdateCoverHandler;)Lcom/amazon/kcp/cover/UpdateCoverHandler$IUpdateCover;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler;->cover:Lcom/amazon/kcp/cover/UpdateCoverHandler$IUpdateCover;

    return-object p0
.end method


# virtual methods
.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentUpdate;

    .line 51
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    .line 52
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    new-instance v3, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v3, v1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 57
    new-instance v1, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 58
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v4

    new-instance v5, Lcom/amazon/kcp/cover/UpdateCoverHandler$1;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/amazon/kcp/cover/UpdateCoverHandler$1;-><init>(Lcom/amazon/kcp/cover/UpdateCoverHandler;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    invoke-interface {v4, v5}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public registerHandler()V
    .locals 1

    .line 32
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public setLibraryItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    return-void
.end method

.method shouldUpdateCover(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 77
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 78
    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregisterHandler()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method
