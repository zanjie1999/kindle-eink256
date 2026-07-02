.class public Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;
.super Ljava/lang/Object;
.source "CoverCachingPolicy.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverCachingScrollTask"
.end annotation


# instance fields
.field private final end:I

.field private final isBlocking:Z

.field private final scrollState:I

.field private final start:I

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->start:I

    iput p3, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->end:I

    iput p4, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->scrollState:I

    iput-boolean p5, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->isBlocking:Z

    return-void
.end method

.method private final addItem(Ljava/util/Map;III)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;III)I"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-lt p2, p3, :cond_2

    if-le p2, p4, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {p3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getAdapterCallback$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;->getBookId(I)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 177
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final cacheCovers(IIIZ)V
    .locals 1

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->getContentsForCache(III)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 145
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {p2}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getCoverCache$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getImageDimension$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v0

    invoke-interface {p2, p1, p3, v0, p4}, Lcom/amazon/kcp/cover/ICoverCacheManager;->cacheCovers(Ljava/util/Map;ILcom/amazon/kindle/util/drawing/Dimension;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final getContentsForCache(III)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;"
        }
    .end annotation

    sub-int v0, p2, p1

    if-ltz v0, :cond_2

    if-ltz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    sub-int v2, p3, v2

    .line 161
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->addItem(Ljava/util/Map;III)I

    move-result v2

    sub-int/2addr v0, v2

    add-int v2, p3, v3

    .line 164
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->addItem(Ljava/util/Map;III)I

    move-result v2

    sub-int/2addr v0, v2

    move v2, v3

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public notifyViewsIfNecessary()V
    .locals 2

    .line 131
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->scrollState:I

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getAdapterCallback$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;->scrollStateIdle()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 132
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask$notifyViewsIfNecessary$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask$notifyViewsIfNecessary$1;-><init>(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getAdapterCallback$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget v1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->start:I

    iget v2, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->end:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    .line 95
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getMaxNumToCache$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 96
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getMaxNumToCache$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 101
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getCurrentCacheStart$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I

    move-result v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getCurrentCacheEnd$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_0
    move v3, v2

    goto :goto_4

    .line 104
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getCurrentCacheStart$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 105
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getCurrentCacheStart$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I

    move-result v3

    if-ge v0, v3, :cond_3

    move v3, v0

    goto :goto_2

    .line 107
    :cond_3
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getCurrentCacheStart$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    move v4, v3

    goto :goto_0

    .line 109
    :cond_4
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getCurrentCacheEnd$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I

    move-result v3

    if-le v2, v3, :cond_5

    move v3, v2

    goto :goto_3

    .line 111
    :cond_5
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getCurrentCacheEnd$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_3
    move v4, v0

    .line 118
    :goto_4
    iget-object v5, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v5}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getCurrentCacheStart$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I

    move-result v5

    if-ne v2, v5, :cond_6

    iget-object v5, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v5}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getCurrentCacheEnd$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I

    move-result v5

    if-eq v0, v5, :cond_7

    .line 119
    :cond_6
    iget-boolean v5, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->isBlocking:Z

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->cacheCovers(IIIZ)V

    .line 120
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v1, v2}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$setCurrentCacheStart$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;I)V

    .line 121
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v1, v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$setCurrentCacheEnd$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;I)V

    .line 122
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->notifyViewsIfNecessary()V

    :cond_7
    return-void
.end method
