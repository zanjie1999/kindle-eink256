.class public final Lcom/amazon/kcp/library/LibraryItemsCountCache;
.super Landroid/util/LruCache;
.source "LibraryItemsCountCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field private static final INSTANCE:Lcom/amazon/kcp/library/LibraryItemsCountCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/amazon/kcp/library/LibraryItemsCountCache;

    invoke-direct {v0}, Lcom/amazon/kcp/library/LibraryItemsCountCache;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/LibraryItemsCountCache;->INSTANCE:Lcom/amazon/kcp/library/LibraryItemsCountCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x32

    .line 46
    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 47
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static getInstance()Lcom/amazon/kcp/library/LibraryItemsCountCache;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kcp/library/LibraryItemsCountCache;->INSTANCE:Lcom/amazon/kcp/library/LibraryItemsCountCache;

    return-object v0
.end method


# virtual methods
.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
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

    .line 108
    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public onKRXAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 75
    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public onLibraryContentAdded(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_ADD"
    .end annotation

    .line 86
    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public onLibraryContentDeleted(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_DELETE"
    .end annotation

    .line 97
    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public onSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 62
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->getType()Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->METADATA_PARSE_END:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    if-ne p1, v0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    return-void
.end method
