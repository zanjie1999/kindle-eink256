.class final Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;
.super Ljava/lang/Object;
.source "LargeCollectionsRepository.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->retrieveLibraryItems(Ljava/util/List;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeCollectionsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeCollectionsRepository.kt\ncom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1517#2:64\n1588#2,3:65\n*E\n*S KotlinDebug\n*F\n+ 1 LargeCollectionsRepository.kt\ncom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1\n*L\n33#1:64\n33#1,3:65\n*E\n"
.end annotation


# instance fields
.field final synthetic $ids:Ljava/util/List;

.field final synthetic $listener:Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;

.field final synthetic $periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;Ljava/util/List;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;->$ids:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;->$periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;->$listener:Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;->$ids:Ljava/util/List;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 66
    check-cast v2, Lcom/amazon/kindle/model/content/IBookID;

    .line 33
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;

    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;->$periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

    invoke-static {v3, v2, v4}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->access$retrieveLibraryItem(Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1$1;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository$retrieveLibraryItems$1;Ljava/util/List;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
