.class final Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LargeLibraryIntegratorImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->fetchSeriesItemsForBatch(Lcom/amazon/kcp/integrator/BatchRequest;)V
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
        "Lcom/amazon/kindle/content/GroupItemMetadata;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeLibraryIntegratorImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeLibraryIntegratorImpl.kt\ncom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2008:1\n1517#2:2009\n1588#2,3:2010\n*E\n*S KotlinDebug\n*F\n+ 1 LargeLibraryIntegratorImpl.kt\ncom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1\n*L\n491#1:2009\n491#1,3:2010\n*E\n"
.end annotation


# instance fields
.field final synthetic $batch:Lcom/amazon/kcp/integrator/BatchRequest;

.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;Lcom/amazon/kcp/integrator/BatchRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iput-object p2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/content/GroupItemMetadata;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BatchRequest;->getRequest()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/integrator/Batch;->containsGrouping(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BatchRequest;->getRequest()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/integrator/Batch;->containsGrouping(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v2}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v3}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processSeriesMembershipFetchResults$LargeLibraryImplementation_release(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;Lcom/amazon/kcp/integrator/ModelContentLeafProvider;)V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x20

    .line 489
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BatchRequest;->getRequest()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/Batch;->sortTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 491
    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    .line 2009
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2010
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2011
    check-cast v3, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 491
    new-instance v4, Lcom/amazon/kcp/integrator/GroupItemNumberSortMapper;

    invoke-direct {v4, v3}, Lcom/amazon/kcp/integrator/GroupItemNumberSortMapper;-><init>(Lcom/amazon/kindle/content/GroupItemMetadata;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {p1}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v3}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v3

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processNumberSorting$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 492
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesItemsForBatch$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getObserver$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;->flushChanges()V

    return-void
.end method
