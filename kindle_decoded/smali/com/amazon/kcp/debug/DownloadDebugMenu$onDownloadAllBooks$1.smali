.class final Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;
.super Ljava/lang/Object;
.source "DownloadDebugMenu.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DownloadDebugMenu;->onDownloadAllBooks(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

.field final synthetic $factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field final synthetic $shouldDownload:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/IKindleObjectFactory;ZLcom/amazon/kindle/services/download/IDownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;->$factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    iput-boolean p2, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;->$shouldDownload:Z

    iput-object p3, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;->$downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;->$factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    const-string v1, "factory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1$books$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1$books$1;-><init>(Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/ContentMetadataFilter;)Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 252
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    return-void

    .line 255
    :cond_2
    iget-boolean v2, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;->$shouldDownload:Z

    if-nez v2, :cond_3

    .line 256
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 257
    iget-object v3, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;->$downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    invoke-interface {v3, v2, v1}, Lcom/amazon/kindle/services/download/IDownloadService;->cancel(Lcom/amazon/kindle/content/ContentMetadata;Z)Z

    goto :goto_2

    .line 260
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;->$downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    new-instance v2, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DEBUG;

    const-string v3, "DownloadDebugMenu"

    invoke-direct {v2, v3}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DEBUG;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Ljava/util/Collection;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    :cond_4
    return-void
.end method
