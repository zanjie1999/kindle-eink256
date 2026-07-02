.class public final Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;
.super Ljava/lang/Object;
.source "LargeCollectionsRepository.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/amazon/kindle/collections/dto/ICollection;",
        ">;",
        "Ljava/lang/Object<",
        "Lcom/amazon/kindle/collections/dto/ICollection;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeCollectionsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeCollectionsRepository.kt\ncom/amazon/kcp/library/fragments/LargeCollectionsRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1517#2:64\n1588#2,3:65\n*E\n*S KotlinDebug\n*F\n+ 1 LargeCollectionsRepository.kt\ncom/amazon/kcp/library/fragments/LargeCollectionsRepository\n*L\n51#1:64\n51#1,3:65\n*E\n"
.end annotation


# instance fields
.field private final collectionsManager:Lcom/amazon/kindle/collections/ICollectionsManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/collections/ICollectionsManager;)V
    .locals 1

    const-string v0, "collectionsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->collectionsManager:Lcom/amazon/kindle/collections/ICollectionsManager;

    return-void
.end method

.method public static final synthetic access$retrieveLibraryItem(Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kindle/collections/dto/ICollection;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->retrieveLibraryItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object p0

    return-object p0
.end method

.method private final retrieveLibraryItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kindle/collections/dto/ICollection;
    .locals 1

    .line 39
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->collectionsManager:Lcom/amazon/kindle/collections/ICollectionsManager;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "id.asin!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionById(Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->uncollectedCollection()Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final retrieveLibraryItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kcp/integrator/PeriodicalArguments;",
            "Lcom/amazon/kcp/integrator/ILibraryRetrievalListener<",
            "-",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItem$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private final retrieveLibraryItems(Ljava/util/List;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;",
            "Lcom/amazon/kcp/integrator/PeriodicalArguments;",
            "Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener<",
            "-",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;Ljava/util/List;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private final uncollectedCollection()Lcom/amazon/kindle/collections/dto/ICollection;
    .locals 9

    .line 55
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->uncollected_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "ReddingApplication.getAp\u2026string.uncollected_title)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/amazon/kindle/collections/dto/CollectionDTO;

    .line 61
    sget-object v8, Lcom/amazon/kindle/collections/dto/ThumbnailType;->NUMBERED:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    const-string v3, "Uncollected"

    const-string v6, "en-US"

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, v5

    .line 56
    invoke-direct/range {v2 .. v8}, Lcom/amazon/kindle/collections/dto/CollectionDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/collections/dto/ThumbnailType;)V

    return-object v0
.end method


# virtual methods
.method public retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kindle/collections/dto/ICollection;
    .locals 1

    const-string p1, "id"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "periodicalArguments"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-virtual {p2}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, p2, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-direct {p0, p1, p3}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->retrieveLibraryItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object p1

    return-object p1
.end method

.method public retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/integrator/LibraryModelFormula;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kcp/integrator/PeriodicalArguments;",
            "Lcom/amazon/kcp/integrator/ILibraryRetrievalListener<",
            "-",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;)V"
        }
    .end annotation

    const-string p1, "id"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "periodicalArguments"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listener"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-virtual {p2}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, p2, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->retrieveLibraryItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V

    return-void
.end method

.method public retrieveLibraryItemsByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Ljava/util/List;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/integrator/LibraryModelFormula;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Lcom/amazon/kcp/integrator/PeriodicalArguments;",
            "Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener<",
            "-",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;)V"
        }
    .end annotation

    const-string p1, "ids"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "periodicalArguments"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listener"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 66
    check-cast v0, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 51
    new-instance v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->retrieveLibraryItems(Ljava/util/List;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V

    return-void
.end method
