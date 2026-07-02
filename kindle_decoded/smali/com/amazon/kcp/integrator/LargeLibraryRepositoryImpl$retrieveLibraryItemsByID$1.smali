.class final Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;
.super Ljava/lang/Object;
.source "LargeLibraryRepositoryImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->retrieveLibraryItemsByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Ljava/util/List;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeLibraryRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeLibraryRepositoryImpl.kt\ncom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,554:1\n1571#2,9:555\n1819#2:564\n1820#2:566\n1580#2:567\n1#3:565\n*E\n*S KotlinDebug\n*F\n+ 1 LargeLibraryRepositoryImpl.kt\ncom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1\n*L\n386#1,9:555\n386#1:564\n386#1:566\n386#1:567\n386#1:565\n*E\n"
.end annotation


# instance fields
.field final synthetic $formula:Lcom/amazon/kcp/integrator/LibraryModelFormula;

.field final synthetic $ids:Ljava/util/List;

.field final synthetic $listener:Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;

.field final synthetic $periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/util/List;Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    iput-object p2, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;->$ids:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;->$formula:Lcom/amazon/kcp/integrator/LibraryModelFormula;

    iput-object p4, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;->$periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

    iput-object p5, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;->$listener:Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 386
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;->$ids:Ljava/util/List;

    .line 555
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 564
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 563
    check-cast v2, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 386
    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    iget-object v4, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;->$formula:Lcom/amazon/kcp/integrator/LibraryModelFormula;

    iget-object v5, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;->$periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

    invoke-virtual {v3, v4, v2, v5}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 563
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->access$getMainThreadHandler$p(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemsByID$1;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
