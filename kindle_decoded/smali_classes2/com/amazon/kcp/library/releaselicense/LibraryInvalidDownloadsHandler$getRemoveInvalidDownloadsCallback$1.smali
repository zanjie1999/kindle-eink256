.class public final Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;
.super Ljava/lang/Object;
.source "LibraryInvalidDownloadsHandler.kt"

# interfaces
.implements Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->getRemoveInvalidDownloadsCallback$LibraryModule_release(Lcom/amazon/kindle/content/ILibraryService;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Landroid/content/SharedPreferences;)Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryInvalidDownloadsHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryInvalidDownloadsHandler.kt\ncom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1819#2,2:125\n*E\n*S KotlinDebug\n*F\n+ 1 LibraryInvalidDownloadsHandler.kt\ncom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1\n*L\n109#1,2:125\n*E\n"
.end annotation


# instance fields
.field final synthetic $asinTypeMap:Ljava/util/Map;

.field final synthetic $libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field final synthetic $responseRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic $sharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;Lcom/amazon/kindle/content/ILibraryService;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Ljava/util/Map;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;->this$0:Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;

    iput-object p2, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;->$libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iput-object p3, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;->$asinTypeMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;->$responseRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;)V
    .locals 6

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->getSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->getInvalidDownloadsList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    iget-object v4, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;->$libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v5, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;->$asinTypeMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;->$libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v5}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5, v2}, Lcom/amazon/kindle/content/ILibraryService;->deleteItemLocally(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;->this$0:Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove Invalid Downloads success response with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->getInvalidDownloadsList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " invalid items"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 113
    invoke-static {v2, p1}, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics;->reportServiceResponseMetrics(ZI)V

    goto :goto_2

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;->this$0:Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove Invalid Downloads failure response with response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->getResponseCode()I

    move-result p1

    invoke-static {v1, p1}, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics;->reportServiceResponseMetrics(ZI)V

    .line 118
    :goto_2
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;->$responseRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    .line 119
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/LibraryInvalidDownloadsHandler$getRemoveInvalidDownloadsCallback$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "INVALID_DOWNLOADS_REMOVAL_REQUEST_SUBMITTED"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;->COMPLETED:Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

    invoke-static {p1}, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics;->reportRemoveInvalidDownloadsOperationState(Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;)V

    :cond_3
    return-void
.end method
