.class public final Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader$DelegateProxy;
.super Ljava/lang/Object;
.source "ManifestDownloader.kt"

# interfaces
.implements Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DelegateProxy"
.end annotation


# instance fields
.field private final delegate:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;

.field final synthetic this$0:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;",
            ")V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader$DelegateProxy;->this$0:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader$DelegateProxy;->delegate:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;

    return-void
.end method


# virtual methods
.method public downloadJobFinished(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;)V
    .locals 2

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader$DelegateProxy;->this$0:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    invoke-static {v0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;->access$getManifestJobs$p(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader$DelegateProxy;->delegate:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;->downloadJobFinished(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;)V

    return-void
.end method
