.class public final Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;
.super Ljava/lang/Object;
.source "LibraryInvalidDownloadsHandler.kt"

# interfaces
.implements Lcom/amazon/kcp/application/internal/commands/InvalidDownloadsHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryInvalidDownloadsHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryInvalidDownloadsHandler.kt\ncom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n734#2:125\n825#2,2:126\n1147#2,2:128\n1221#2,4:130\n*E\n*S KotlinDebug\n*F\n+ 1 LibraryInvalidDownloadsHandler.kt\ncom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler\n*L\n51#1:125\n51#1,2:126\n73#1,2:128\n73#1,4:130\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private libraryRightsClientAPI:Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(LibraryInva\u2026loadsHandler::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->TAG:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->libraryRightsClientAPI:Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;

    .line 41
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    const-string v1, "Utils.getFactory().libraryService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final isSupportedContentType(Lcom/amazon/kindle/krx/content/ContentType;)Z
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->NEWSPAPER:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public final getRemoveInvalidDownloadsCallback$LibraryModule_release(Lcom/amazon/kindle/content/ILibraryService;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Landroid/content/SharedPreferences;)Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/SharedPreferences;",
            ")",
            "Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;"
        }
    .end annotation

    const-string v0, "libraryService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseRemaining"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asinTypeMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;-><init>(Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;Lcom/amazon/kindle/content/ILibraryService;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public final handleInvalidDownloadsRequest$LibraryModule_release(Ljava/util/List;Lcom/amazon/kindle/content/ILibraryService;Landroid/content/SharedPreferences;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    const-string v0, "downloadedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 128
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 129
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 130
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 131
    check-cast v2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 73
    invoke-interface {v2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    const-string v4, "it.bookID"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x32

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x32

    .line 77
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    if-eqz v2, :cond_1

    add-int/lit8 v4, v0, 0x1

    .line 79
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 84
    :goto_1
    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;->STARTED:Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

    invoke-static {v4}, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics;->reportRemoveInvalidDownloadsOperationState(Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;)V

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics;->reportRemoveInvalidDownloadsOperationSize(I)V

    const/4 v4, 0x0

    if-ltz v0, :cond_3

    :goto_2
    mul-int/lit8 v5, v4, 0x32

    if-ge v4, v0, :cond_2

    add-int/lit8 v6, v4, 0x1

    mul-int/lit8 v6, v6, 0x32

    goto :goto_3

    :cond_2
    add-int v6, v5, v2

    .line 94
    :goto_3
    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 95
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics;->reportServiceRequestMetrics()V

    .line 96
    iget-object v6, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove Invalid Downloads request sent with batch of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " items"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v6, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->libraryRightsClientAPI:Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;

    invoke-virtual {p0, p2, v3, v1, p3}, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->getRemoveInvalidDownloadsCallback$LibraryModule_release(Lcom/amazon/kindle/content/ILibraryService;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Landroid/content/SharedPreferences;)Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;->getInvalidDownloads(Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;)V

    if-eq v4, v0, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public removeInvalidDownloads(Landroid/content/SharedPreferences;)V
    .locals 8

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 47
    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 48
    sget-object v3, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_GROUP_DOWNLOADED_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 49
    sget-object v4, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v5, -0x1

    const-string v6, "All"

    const/4 v7, 0x0

    .line 46
    invoke-static/range {v1 .. v7}, Lcom/amazon/kcp/library/LibraryCursorFactory;->loadLibraryItemsWithoutCachingResult(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const-string v5, "it"

    .line 52
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    const-string v5, "it.type"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/kcp/library/models/BookType;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v4

    const-string v5, "it.type.contentType"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->isSupportedContentType(Lcom/amazon/kindle/krx/content/ContentType;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    if-eqz v2, :cond_4

    .line 54
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove Invalid Downloads request started with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "INVALID_DOWNLOADS_REMOVAL_REQUEST_SUBMITTED"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p0, v2, v0, p1}, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->handleInvalidDownloadsRequest$LibraryModule_release(Ljava/util/List;Lcom/amazon/kindle/content/ILibraryService;Landroid/content/SharedPreferences;)V

    :cond_4
    return-void
.end method
