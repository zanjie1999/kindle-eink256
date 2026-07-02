.class final Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4$$special$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "LargeLibraryRepositoryImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4$$special$$inlined$let$lambda$1;->$it:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iput-object p2, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4$$special$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4$$special$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;

    iget-object v0, v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4;->$listener:Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$retrieveLibraryItemByID$4$$special$$inlined$let$lambda$1;->$it:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;->onItemRetrieved(Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;)V

    return-void
.end method
