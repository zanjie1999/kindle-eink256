.class public final Lcom/audible/mobile/util/ChapterUtils;
.super Ljava/lang/Object;
.source "ChapterUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChapterUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChapterUtils.kt\ncom/audible/mobile/util/ChapterUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,494:1\n310#2,7:495\n310#2,7:502\n310#2,7:509\n310#2,7:516\n310#2,7:523\n310#2,7:530\n310#2,7:537\n310#2,7:544\n1366#2:551\n1435#2,3:552\n*E\n*S KotlinDebug\n*F\n+ 1 ChapterUtils.kt\ncom/audible/mobile/util/ChapterUtils\n*L\n107#1,7:495\n125#1,7:502\n145#1,7:509\n166#1,7:516\n184#1,7:523\n202#1,7:530\n222#1,7:537\n242#1,7:544\n400#1:551\n400#1,3:552\n*E\n"
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x4

.field public static final INSTANCE:Lcom/audible/mobile/util/ChapterUtils;

.field private static final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/audible/mobile/util/ChapterUtils;

    invoke-direct {v0}, Lcom/audible/mobile/util/ChapterUtils;-><init>()V

    sput-object v0, Lcom/audible/mobile/util/ChapterUtils;->INSTANCE:Lcom/audible/mobile/util/ChapterUtils;

    .line 24
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/util/ChapterUtils;->cache:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final applyLengthToChapterList(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 552
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 553
    check-cast v1, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    .line 401
    new-instance v10, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;

    invoke-interface {v1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getLevel()I

    move-result v3

    invoke-interface {v1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getLevelIndex()I

    move-result v4

    invoke-interface {v1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getIndex()I

    move-result v5

    invoke-interface {v1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getStartTime()I

    move-result v6

    invoke-interface {v1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v7, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 402
    :goto_1
    invoke-interface {v1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getTitle()Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/audible/mobile/util/ChapterUtils;->INSTANCE:Lcom/audible/mobile/util/ChapterUtils;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Hierarchical;->getChildren()Ljava/util/List;

    move-result-object v1

    const-string v9, "it.children"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1, p2}, Lcom/audible/mobile/util/ChapterUtils;->applyLengthToChapterList(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    move-object v2, v10

    .line 401
    invoke-direct/range {v2 .. v9}, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;-><init>(IIIIILjava/lang/String;Ljava/util/List;)V

    .line 402
    invoke-interface {v0, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final binarySearchForPlaybackPosition(ILjava/util/List;II)Lcom/audible/mobile/audio/metadata/ChapterMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;II)",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;"
        }
    .end annotation

    if-lt p3, p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int v0, p3, p4

    ushr-int/lit8 v0, v0, 0x1

    .line 422
    invoke-direct {p0, p1, p2, v0}, Lcom/audible/mobile/util/ChapterUtils;->comparePlaybackPositionToChapter(ILjava/util/List;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 424
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    return-object p1

    :cond_1
    if-gez v1, :cond_2

    .line 427
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/audible/mobile/util/ChapterUtils;->binarySearchForPlaybackPosition(ILjava/util/List;II)Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 430
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/audible/mobile/util/ChapterUtils;->binarySearchForPlaybackPosition(ILjava/util/List;II)Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object p1

    return-object p1
.end method

.method private final comparePlaybackPositionToChapter(ILjava/util/List;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;I)I"
        }
    .end annotation

    .line 450
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    .line 451
    invoke-interface {v0}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getStartTime()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 454
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    return v2

    :cond_0
    add-int/2addr p3, v1

    .line 457
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    invoke-interface {p2}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getStartTime()I

    move-result p2

    if-ge p1, p2, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private final findPlayableChapterInRange(Ljava/util/List;II)Lcom/audible/mobile/audio/metadata/ChapterMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;II)",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;"
        }
    .end annotation

    move v0, p2

    :goto_0
    if-eq v0, p3, :cond_2

    .line 479
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    .line 480
    invoke-virtual {p0, v1}, Lcom/audible/mobile/util/ChapterUtils;->isPlayable(Lcom/audible/mobile/audio/metadata/ChapterMetadata;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final fixChapterLengthFromStartTime(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation

    const-string v0, "chapterList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, p1}, Lcom/audible/mobile/util/ChapterUtils;->getFlattenedChapterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 382
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 384
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    .line 385
    invoke-interface {v2}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getStartTime()I

    move-result v3

    sub-int/2addr p2, v3

    .line 386
    invoke-interface {v2}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-interface {v2}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getStartTime()I

    move-result p2

    goto :goto_0

    .line 390
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/audible/mobile/util/ChapterUtils;->applyLengthToChapterList(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getFlattenedChapterAtPosition(Ljava/util/List;II)Lcom/audible/mobile/audio/metadata/ChapterMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;II)",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;"
        }
    .end annotation

    const-string v0, "chapterList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p2, :cond_4

    if-le p2, p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/audible/mobile/util/ChapterUtils;->binarySearchForPlaybackPosition(ILjava/util/List;II)Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 79
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/audible/mobile/util/ChapterUtils;->getNextFlattenedChapter(Ljava/util/List;Lcom/audible/mobile/audio/metadata/ChapterMetadata;)Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 82
    invoke-interface {p1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getStartTime()I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    if-lt p2, p1, :cond_3

    .line 87
    invoke-interface {v1}, Lcom/audible/mobile/domain/Hierarchical;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 90
    invoke-interface {v1}, Lcom/audible/mobile/domain/Hierarchical;->getChildren()Ljava/util/List;

    move-result-object p1

    const-string v0, "matchingChapter.children"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/audible/mobile/util/ChapterUtils;->getFlattenedChapterAtPosition(Ljava/util/List;II)Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final getFlattenedChapterCount(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;)I"
        }
    .end annotation

    const-string v0, "chapterList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/audible/mobile/util/ChapterUtils;->getFlattenedChapterList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final declared-synchronized getFlattenedChapterList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "chapterList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/audible/mobile/util/ChapterUtils;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lcom/audible/mobile/util/ChapterUtils;->cache:Landroid/util/LruCache;

    invoke-static {p1}, Lcom/audible/mobile/util/TreeUtils;->getPreorderedParentMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    sget-object v0, Lcom/audible/mobile/util/ChapterUtils;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "cache[chapterList]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getNextFlattenedChapter(Ljava/util/List;Lcom/audible/mobile/audio/metadata/ChapterMetadata;)Lcom/audible/mobile/audio/metadata/ChapterMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ")",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;"
        }
    .end annotation

    const-string v0, "chapterList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseChapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/audible/mobile/util/ChapterUtils;->getFlattenedChapterList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 538
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 539
    check-cast v2, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    .line 222
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ne v1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 227
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    return-object p1
.end method

.method public final getPreviousFlattenedChapter(Ljava/util/List;Lcom/audible/mobile/audio/metadata/ChapterMetadata;)Lcom/audible/mobile/audio/metadata/ChapterMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ")",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;"
        }
    .end annotation

    const-string v0, "chapterList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseChapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/audible/mobile/util/ChapterUtils;->getFlattenedChapterList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 545
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 546
    check-cast v2, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    .line 242
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ne v1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 247
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    return-object p1
.end method

.method public final getPreviousPlayableFlattenedChapter(Ljava/util/List;Lcom/audible/mobile/audio/metadata/ChapterMetadata;)Lcom/audible/mobile/audio/metadata/ChapterMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ")",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;"
        }
    .end annotation

    const-string v0, "chapterList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseChapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/audible/mobile/util/ChapterUtils;->getFlattenedChapterList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 517
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 518
    check-cast v2, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    .line 166
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ne v1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 171
    invoke-direct {p0, p1, v1, v3}, Lcom/audible/mobile/util/ChapterUtils;->findPlayableChapterInRange(Ljava/util/List;II)Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final isPlayable(Lcom/audible/mobile/audio/metadata/ChapterMetadata;)Z
    .locals 1

    const-string v0, "chapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-interface {p1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getLength()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
