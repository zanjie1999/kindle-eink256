.class final Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LargeLibraryIntegratorImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->fetchBooksForBatch(Lcom/amazon/kcp/integrator/BatchRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/amazon/kindle/content/ContentMetadata;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeLibraryIntegratorImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeLibraryIntegratorImpl.kt\ncom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2008:1\n1517#2:2009\n1588#2,3:2010\n1517#2:2013\n1588#2,3:2014\n1517#2:2017\n1588#2,3:2018\n*E\n*S KotlinDebug\n*F\n+ 1 LargeLibraryIntegratorImpl.kt\ncom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2\n*L\n361#1:2009\n361#1,3:2010\n362#1:2013\n362#1,3:2014\n363#1:2017\n363#1,3:2018\n*E\n"
.end annotation


# instance fields
.field final synthetic $batch:Lcom/amazon/kcp/integrator/BatchRequest;

.field final synthetic $sortTypes:Ljava/util/Set;

.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;Lcom/amazon/kcp/integrator/BatchRequest;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iput-object p2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    iput-object p3, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$sortTypes:Ljava/util/Set;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$onFirstBatchFlush(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)V

    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BatchRequest;->getRequest()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/Batch;->categories()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v2}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v3}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processBookCategory$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 361
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$sortTypes:Ljava/util/Set;

    .line 2009
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2010
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 2011
    check-cast v5, Lcom/amazon/kindle/content/ContentMetadata;

    .line 361
    new-instance v6, Lcom/amazon/kcp/integrator/BookDateSortMapper;

    invoke-direct {v6, v5}, Lcom/amazon/kcp/integrator/BookDateSortMapper;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v4}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v5}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processDateSorting$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 362
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$sortTypes:Ljava/util/Set;

    .line 2013
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2014
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 2015
    check-cast v5, Lcom/amazon/kindle/content/ContentMetadata;

    .line 362
    new-instance v6, Lcom/amazon/kcp/integrator/BookStringSortMapper;

    invoke-direct {v6, v5}, Lcom/amazon/kcp/integrator/BookStringSortMapper;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v4}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v5}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processStringSorting$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 363
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getRawDictionaryTypesToSet$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/util/Set;

    move-result-object v1

    .line 2017
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2018
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2019
    check-cast v4, Lcom/amazon/kindle/content/ContentMetadata;

    .line 363
    new-instance v5, Lcom/amazon/kcp/integrator/BookRawStringMapper;

    invoke-direct {v5, v4}, Lcom/amazon/kcp/integrator/BookRawStringMapper;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v3}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v4}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processRawResults$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 364
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BatchRequest;->getRequest()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/Batch;->readingProgress()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v2}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v3}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processReadingProgress$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 365
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BatchRequest;->getRequest()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/Batch;->ownership()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v2}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v3}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processOwnership$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 366
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BatchRequest;->getRequest()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/Batch;->accountTypes()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v2}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v3}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processAccountTypes$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 367
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BatchRequest;->getRequest()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/Batch;->containsSampleBooks()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v2}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processSampleBooksFetchResults$LargeLibraryImplementation_release(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 370
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BatchRequest;->getRequest()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/Batch;->containsAudibleCompanions()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 371
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v2}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processAudibleCompanionFetchResults$LargeLibraryImplementation_release(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 373
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BatchRequest;->getRequest()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/Batch;->containsCarousel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 374
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v2}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processCarouselFetchResults$LargeLibraryImplementation_release(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 376
    :cond_6
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getObserver$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2$4;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;->flushChanges(Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V

    return-void
.end method
