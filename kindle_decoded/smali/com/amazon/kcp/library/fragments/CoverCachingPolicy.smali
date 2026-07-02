.class public final Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;
.super Ljava/lang/Object;
.source "CoverCachingPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;,
        Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$Companion;
    }
.end annotation


# static fields
.field private static executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final adapterCallback:Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

.field private final coverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

.field private currentCacheEnd:I

.field private currentCacheStart:I

.field private final imageDimension:Lcom/amazon/kindle/util/drawing/Dimension;

.field private final maxNumToCache:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "ThreadPoolManager.getIns\u2026Builder().buildExecutor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 1

    const-string v0, "adapterCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageDimension"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->adapterCallback:Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->coverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->imageDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    .line 16
    invoke-interface {p2, p3}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getMaxCoversCached(Lcom/amazon/kindle/util/drawing/Dimension;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->maxNumToCache:I

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->currentCacheStart:I

    .line 18
    iput p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->currentCacheEnd:I

    return-void
.end method

.method public static final synthetic access$getAdapterCallback$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->adapterCallback:Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

    return-object p0
.end method

.method public static final synthetic access$getCoverCache$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)Lcom/amazon/kcp/cover/ICoverCacheManager;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->coverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

    return-object p0
.end method

.method public static final synthetic access$getCurrentCacheEnd$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->currentCacheEnd:I

    return p0
.end method

.method public static final synthetic access$getCurrentCacheStart$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->currentCacheStart:I

    return p0
.end method

.method public static final synthetic access$getImageDimension$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->imageDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    return-object p0
.end method

.method public static final synthetic access$getMaxNumToCache$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->maxNumToCache:I

    return p0
.end method

.method public static final synthetic access$setCurrentCacheEnd$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->currentCacheEnd:I

    return-void
.end method

.method public static final synthetic access$setCurrentCacheStart$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->currentCacheStart:I

    return-void
.end method

.method private final submitNewScrollTask(IIIZ)V
    .locals 8

    sub-int v0, p3, p2

    if-lez v0, :cond_0

    .line 52
    sget-object v0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;-><init>(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;IIIZ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onScroll(II)V
    .locals 2

    .line 25
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->adapterCallback:Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;->scrollStateFling()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->submitNewScrollTask(IIIZ)V

    :cond_0
    return-void
.end method

.method public final onScroll(IIZ)V
    .locals 1

    .line 31
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->adapterCallback:Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;->scrollStateFling()I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->submitNewScrollTask(IIIZ)V

    :cond_0
    return-void
.end method

.method public final onScrollStateChange(III)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->adapterCallback:Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;->scrollStateIdle()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->adapterCallback:Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;->scrollStateTouchScroll()I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->submitNewScrollTask(IIIZ)V

    :cond_1
    return-void
.end method

.method public final onScrollStateChange(IIIZ)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->adapterCallback:Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;->scrollStateIdle()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->adapterCallback:Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;->scrollStateTouchScroll()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 46
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->submitNewScrollTask(IIIZ)V

    :cond_1
    return-void
.end method
