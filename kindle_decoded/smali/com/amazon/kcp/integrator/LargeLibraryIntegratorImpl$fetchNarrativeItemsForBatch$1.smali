.class final Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchNarrativeItemsForBatch$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LargeLibraryIntegratorImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->fetchNarrativeItemsForBatch(Lcom/amazon/kcp/integrator/BatchRequest;)V
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


# instance fields
.field final synthetic $batch:Lcom/amazon/kcp/integrator/BatchRequest;

.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;Lcom/amazon/kcp/integrator/BatchRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchNarrativeItemsForBatch$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iput-object p2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchNarrativeItemsForBatch$1;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchNarrativeItemsForBatch$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 4
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

    .line 407
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchNarrativeItemsForBatch$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchNarrativeItemsForBatch$1;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BatchRequest;->getAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchNarrativeItemsForBatch$1;->$batch:Lcom/amazon/kcp/integrator/BatchRequest;

    invoke-virtual {v2}, Lcom/amazon/kcp/integrator/BatchRequest;->getFulfilled()Lcom/amazon/kcp/integrator/Batch;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchNarrativeItemsForBatch$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->processNarrativeMembershipFetchResults$LargeLibraryImplementation_release(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;Lcom/amazon/kcp/integrator/ModelContentLeafProvider;)V

    .line 410
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchNarrativeItemsForBatch$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getObserver$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;->flushChanges()V

    return-void
.end method
