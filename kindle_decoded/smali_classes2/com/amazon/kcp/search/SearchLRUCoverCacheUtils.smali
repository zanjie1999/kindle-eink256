.class public final Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;
.super Ljava/lang/Object;
.source "SearchLRUCoverCacheUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchLRUCoverCacheUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchLRUCoverCacheUtils.kt\ncom/amazon/kcp/search/SearchLRUCoverCacheUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,91:1\n13506#2,2:92\n*E\n*S KotlinDebug\n*F\n+ 1 SearchLRUCoverCacheUtils.kt\ncom/amazon/kcp/search/SearchLRUCoverCacheUtils\n*L\n45#1,2:92\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;

.field private static nextPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->INSTANCE:Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;

    const v0, 0x7ffffffe

    .line 30
    sput v0, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->nextPosition:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNextPositionForLRUCache()I
    .locals 2

    .line 67
    sget v0, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->nextPosition:I

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->init()V

    .line 80
    :cond_0
    sget v0, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->nextPosition:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->nextPosition:I

    return v0
.end method

.method public final init()V
    .locals 6

    .line 36
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    .line 37
    instance-of v1, v0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

    invoke-virtual {v1}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverService()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v2

    instance-of v2, v2, Lcom/amazon/kindle/cover/CoverImageService;

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v1}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverService()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/amazon/kindle/cover/CoverImageService;

    sget-object v2, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;->FIFO:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/cover/CoverImageService;->setLoadOrder(Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.amazon.kindle.cover.CoverImageService"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/cover/ImageSizes$Type;->values()[Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v1

    .line 92
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 45
    invoke-interface {v0, v3, v5}, Lcom/amazon/kcp/cover/ICoverCacheManager;->setCachePivot(ILcom/amazon/kindle/cover/ImageSizes$Type;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const v0, 0x7ffffffe

    .line 47
    sput v0, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->nextPosition:I

    return-void
.end method

.method public final reset()V
    .locals 2

    .line 54
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    .line 55
    instance-of v1, v0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverService()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/kindle/cover/CoverImageService;

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverService()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kindle/cover/CoverImageService;

    sget-object v1, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->Companion:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$Companion;->getDEFAULT_HIGH_PRIORITY_EXEC_ORDER()Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cover/CoverImageService;->setLoadOrder(Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.amazon.kindle.cover.CoverImageService"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
