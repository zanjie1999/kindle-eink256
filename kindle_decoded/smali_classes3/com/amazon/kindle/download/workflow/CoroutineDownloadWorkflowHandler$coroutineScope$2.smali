.class final Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$coroutineScope$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CoroutineDownloadWorkflowHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/download/manifest/ManifestRepo;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;Lkotlinx/coroutines/CoroutineDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CoroutineScope;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$coroutineScope$2;->this$0:Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$coroutineScope$2;->invoke()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineScope;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$coroutineScope$2;->this$0:Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;

    invoke-static {v1}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->access$getDispatcher$p(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
