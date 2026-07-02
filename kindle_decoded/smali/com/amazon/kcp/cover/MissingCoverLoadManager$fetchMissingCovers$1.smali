.class final Lcom/amazon/kcp/cover/MissingCoverLoadManager$fetchMissingCovers$1;
.super Ljava/lang/Object;
.source "MissingCoverLoadManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/MissingCoverLoadManager;->fetchMissingCovers(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMissingCoverLoadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MissingCoverLoadManager.kt\ncom/amazon/kcp/cover/MissingCoverLoadManager$fetchMissingCovers$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,152:1\n1517#2:153\n1588#2,3:154\n1819#2,2:159\n37#3,2:157\n*E\n*S KotlinDebug\n*F\n+ 1 MissingCoverLoadManager.kt\ncom/amazon/kcp/cover/MissingCoverLoadManager$fetchMissingCovers$1\n*L\n76#1:153\n76#1,3:154\n85#1,2:159\n76#1,2:157\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/MissingCoverLoadManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/MissingCoverLoadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/cover/MissingCoverLoadManager$fetchMissingCovers$1;->this$0:Lcom/amazon/kcp/cover/MissingCoverLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    .line 65
    new-instance v0, Lcom/amazon/kcp/cover/NonGroupingFilter;

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_LOADED_COVER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "0"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x1

    new-array v5, v10, [Lcom/amazon/kcp/library/LibrarySortType;

    .line 67
    sget-object v6, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_ORDERED:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v11, 0x0

    aput-object v6, v5, v11

    const/4 v7, 0x0

    const-string v8, "MissingCoverLoadManager"

    const/4 v9, 0x0

    move-object v2, v0

    .line 65
    invoke-direct/range {v2 .. v9}, Lcom/amazon/kcp/cover/NonGroupingFilter;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/amazon/kindle/content/ContentMetadataField;

    .line 69
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v3, v2, v11

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v3, v2, v10

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    .line 72
    iget-object v2, v1, Lcom/amazon/kcp/cover/MissingCoverLoadManager$fetchMissingCovers$1;->this$0:Lcom/amazon/kcp/cover/MissingCoverLoadManager;

    invoke-static {v2}, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->access$getLibraryService$p(Lcom/amazon/kcp/cover/MissingCoverLoadManager;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    .line 73
    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 75
    sget-object v5, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    .line 153
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v10, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 155
    check-cast v7, Lcom/amazon/kindle/content/ContentMetadataField;

    .line 76
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v6, v11, [Ljava/lang/String;

    .line 158
    invoke-interface {v4, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v6, v4

    check-cast v6, [Ljava/lang/String;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string v9, "All"

    move-object v4, v0

    .line 71
    invoke-static/range {v2 .. v9}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getCursorForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;[Ljava/lang/String;IILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    .line 83
    :cond_1
    :try_start_0
    iget-object v3, v1, Lcom/amazon/kcp/cover/MissingCoverLoadManager$fetchMissingCovers$1;->this$0:Lcom/amazon/kcp/cover/MissingCoverLoadManager;

    invoke-static {v3, v2, v10}, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->access$parseContentMetadata(Lcom/amazon/kcp/cover/MissingCoverLoadManager;Landroid/database/Cursor;Ljava/util/Set;)Ljava/util/List;

    move-result-object v3

    .line 84
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 159
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/amazon/kindle/content/ContentMetadata;

    .line 86
    iget-object v4, v1, Lcom/amazon/kcp/cover/MissingCoverLoadManager$fetchMissingCovers$1;->this$0:Lcom/amazon/kcp/cover/MissingCoverLoadManager;

    invoke-static {v4}, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->access$getCoverImageService$p(Lcom/amazon/kcp/cover/MissingCoverLoadManager;)Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v11

    sget-object v13, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    sget-object v14, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->NONE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lcom/amazon/kindle/cover/ICoverImageService;->submitCoverFetch(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;ZLcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 79
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 81
    :cond_3
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 158
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
