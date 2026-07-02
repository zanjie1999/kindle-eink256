.class final Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;
.super Ljava/lang/Object;
.source "WorkflowUtils.kt"

# interfaces
.implements Lcom/amazon/kindle/services/download/IDownloadTracker;


# instance fields
.field private final continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final logTag:Ljava/lang/String;

.field private final realTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/download/IDownloadTracker;Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/download/IDownloadTracker;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "realTracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;->realTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p3, p0, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;->logTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public reportCurrentProgress(J)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;->realTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/services/download/IDownloadTracker;->reportCurrentProgress(J)V

    return-void
.end method

.method public reportCurrentProgress(JJ)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;->realTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/download/IDownloadTracker;->reportCurrentProgress(JJ)V

    return-void
.end method

.method public reportState(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/String;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;->realTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/services/download/IDownloadTracker;->reportState(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/String;)V

    .line 297
    iget-object p2, p0, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    monitor-enter p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    :try_start_0
    sget-object p3, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    .line 311
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not resuming continuation for GroupDownloadStatus "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " since it\'s not terminal"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 307
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1, p3}, Lcom/amazon/kindle/download/coroutines/ContinuationExtensionsKt;->resumeIfActive(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;)V

    .line 314
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public setMaxProgress(J)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;->realTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/services/download/IDownloadTracker;->setMaxProgress(J)V

    return-void
.end method

.method public setMaxProgress(JJ)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/ContinuationAwareDownloadTracker;->realTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/download/IDownloadTracker;->setMaxProgress(JJ)V

    return-void
.end method
