.class final Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2$4;
.super Ljava/lang/Object;
.source "LargeLibraryIntegratorImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->invoke(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2$4;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangesProcessed()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2$4;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;

    iget-object v0, v0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchBooksForBatch$2;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$onFirstBatchFlush(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)V

    return-void
.end method
