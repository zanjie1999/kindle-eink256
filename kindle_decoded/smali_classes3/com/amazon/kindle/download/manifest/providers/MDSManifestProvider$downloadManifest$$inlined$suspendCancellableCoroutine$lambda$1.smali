.class final Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$$inlined$suspendCancellableCoroutine$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MDSManifestProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->downloadManifest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic $params$inlined:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

.field final synthetic this$0:Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$$inlined$suspendCancellableCoroutine$lambda$1;->this$0:Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$$inlined$suspendCancellableCoroutine$lambda$1;->$params$inlined:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$$inlined$suspendCancellableCoroutine$lambda$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    .line 49
    invoke-static {}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received Coroutine cancellation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$$inlined$suspendCancellableCoroutine$lambda$1;->$params$inlined:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clearing download from the ManifestDownloader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$$inlined$suspendCancellableCoroutine$lambda$1;->this$0:Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;

    invoke-static {p1}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;->access$getManifestDownloader$p(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;)Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider$downloadManifest$$inlined$suspendCancellableCoroutine$lambda$1;->$params$inlined:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;->cancelManifestDownload(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)Z

    return-void
.end method
