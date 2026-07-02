.class final Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CoroutineDownloadWorkflowHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->startDownload(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineDownloadWorkflowHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineDownloadWorkflowHandler.kt\ncom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,410:1\n109#2,11:411\n*E\n*S KotlinDebug\n*F\n+ 1 CoroutineDownloadWorkflowHandler.kt\ncom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1\n*L\n125#1,11:411\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.amazon.kindle.download.workflow.CoroutineDownloadWorkflowHandler$startDownload$1"
    f = "CoroutineDownloadWorkflowHandler.kt"
    l = {
        0x1a0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $job:Lkotlinx/coroutines/Job;

.field final synthetic $params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;Lkotlinx/coroutines/Job;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->this$0:Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;

    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->$job:Lkotlinx/coroutines/Job;

    iput-object p3, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->$params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;

    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->this$0:Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->$job:Lkotlinx/coroutines/Job;

    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->$params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;-><init>(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;Lkotlinx/coroutines/Job;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, " for book "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 124
    iget v2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    iget-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->this$0:Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;

    invoke-static {p1}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->access$getCoroutineLock$p(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    .line 416
    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->label:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    move-object v1, p1

    .line 126
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering job "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->$job:Lkotlinx/coroutines/Job;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->$params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->this$0:Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->getRunningJobs$com_amazon_kindle_dm()Ljava/util/Map;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->$params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    const-string v4, "params.bookId.serializedForm"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->$job:Lkotlinx/coroutines/Job;

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting job "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->$job:Lkotlinx/coroutines/Job;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->$params:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    iget-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;->$job:Lkotlinx/coroutines/Job;

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->start()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 420
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
