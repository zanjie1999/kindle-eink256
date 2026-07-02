.class final Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;
.super Ljava/lang/Object;
.source "LargeLibraryRepositoryImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $formula:Lcom/amazon/kcp/integrator/LibraryModelFormula;

.field final synthetic $id:Lcom/amazon/kindle/observablemodel/ItemID;

.field final synthetic $listener:Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;

.field final synthetic $periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    iput-object p2, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;->$formula:Lcom/amazon/kcp/integrator/LibraryModelFormula;

    iput-object p3, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;->$id:Lcom/amazon/kindle/observablemodel/ItemID;

    iput-object p4, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;->$periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

    iput-object p5, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;->$listener:Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;->$formula:Lcom/amazon/kcp/integrator/LibraryModelFormula;

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;->$id:Lcom/amazon/kindle/observablemodel/ItemID;

    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;->$periodicalArguments:Lcom/amazon/kcp/integrator/PeriodicalArguments;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-static {v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->access$getMainThreadHandler$p(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4$$special$$inlined$let$lambda$1;

    invoke-direct {v2, v0, p0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4$$special$$inlined$let$lambda$1;-><init>(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
