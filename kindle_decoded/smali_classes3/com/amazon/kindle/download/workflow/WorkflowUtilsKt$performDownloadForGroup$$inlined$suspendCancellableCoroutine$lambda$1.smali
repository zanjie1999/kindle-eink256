.class final Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WorkflowUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->performDownloadForGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadTracker;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $downloadManager$inlined:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

.field final synthetic $downloadTracker$inlined:Lcom/amazon/kindle/services/download/IDownloadTracker;

.field final synthetic $group$inlined:Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

.field final synthetic $logTag$inlined:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadTracker;Ljava/lang/String;Lcom/amazon/kindle/services/download/IReaderDownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;->$group$inlined:Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;->$downloadTracker$inlined:Lcom/amazon/kindle/services/download/IDownloadTracker;

    iput-object p3, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;->$logTag$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;->$downloadManager$inlined:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 3

    .line 253
    iget-object p1, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;->$group$inlined:Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;->$group$inlined:Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getRequestIds()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 254
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;->$logTag$inlined:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coroutine continuation cancelling the requests for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;->$group$inlined:Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from the IReaderDownloadManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$performDownloadForGroup$$inlined$suspendCancellableCoroutine$lambda$1;->$downloadManager$inlined:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/services/download/IReaderDownloadManager;->cancelDownload(Ljava/util/Map;)Z

    return-void
.end method
