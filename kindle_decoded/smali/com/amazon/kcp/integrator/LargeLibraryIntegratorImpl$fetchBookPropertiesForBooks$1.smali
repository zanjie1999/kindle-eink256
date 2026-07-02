.class final Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LargeLibraryIntegratorImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->fetchBookPropertiesForBooks(Ljava/util/Set;)V
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
    value = "SMAP\nLargeLibraryIntegratorImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeLibraryIntegratorImpl.kt\ncom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2008:1\n1517#2:2009\n1588#2,3:2010\n1517#2:2013\n1588#2,3:2014\n1517#2:2017\n1588#2,3:2018\n*E\n*S KotlinDebug\n*F\n+ 1 LargeLibraryIntegratorImpl.kt\ncom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1\n*L\n782#1:2009\n782#1,3:2010\n783#1:2013\n783#1,3:2014\n784#1:2017\n784#1,3:2018\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 8
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

    .line 781
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getDATE_SORTS()Ljava/util/Set;

    move-result-object v1

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

    .line 782
    new-instance v6, Lcom/amazon/kcp/integrator/BookDateSortMapper;

    invoke-direct {v6, v5}, Lcom/amazon/kcp/integrator/BookDateSortMapper;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v4}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processDateSorting$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 783
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getSTRING_SORTS()Ljava/util/Set;

    move-result-object v1

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

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 2015
    check-cast v6, Lcom/amazon/kindle/content/ContentMetadata;

    .line 783
    new-instance v7, Lcom/amazon/kcp/integrator/BookStringSortMapper;

    invoke-direct {v7, v6}, Lcom/amazon/kcp/integrator/BookStringSortMapper;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v4}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processStringSorting$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 784
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

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

    .line 784
    new-instance v6, Lcom/amazon/kcp/integrator/BookRawStringMapper;

    invoke-direct {v6, v4}, Lcom/amazon/kcp/integrator/BookRawStringMapper;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v3}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processRawResults$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 785
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, v5}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processBookCategory$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 786
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getREADING_PROGRESSES()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, v5}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processReadingProgress$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 787
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getOWNERSHIPS()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, v5}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processOwnership$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 788
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getACCOUNT_TYPES()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, v5}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processAccountTypes$LargeLibraryImplementation_release(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 789
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v5}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processSampleBooksFetchResults$LargeLibraryImplementation_release(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 790
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v5}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processAudibleCompanionFetchResults$LargeLibraryImplementation_release(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 791
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-virtual {v0, p1, v1, v5, v2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processPeriodicalMembershipFetchResults$LargeLibraryImplementation_release(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;Lcom/amazon/kcp/integrator/ModelContentLeafProvider;)V

    .line 792
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v5}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processCarouselFetchResults$LargeLibraryImplementation_release(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 793
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBookPropertiesForBooks$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$flushChangesForFetch(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)V

    return-void
.end method
