.class public Lcom/amazon/kcp/cover/CollectionThumbnailCache$CollectionThumbnailCacheUpdateEvent;
.super Ljava/lang/Object;
.source "CollectionThumbnailCache.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/CollectionThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionThumbnailCacheUpdateEvent"
.end annotation


# instance fields
.field private final refreshType:Lcom/amazon/kindle/event/EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/event/EventType;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$CollectionThumbnailCacheUpdateEvent;->refreshType:Lcom/amazon/kindle/event/EventType;

    return-void
.end method


# virtual methods
.method public getRefreshType()Lcom/amazon/kindle/event/EventType;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$CollectionThumbnailCacheUpdateEvent;->refreshType:Lcom/amazon/kindle/event/EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
