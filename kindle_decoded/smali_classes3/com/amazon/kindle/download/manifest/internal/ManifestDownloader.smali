.class public final Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;
.super Ljava/lang/Object;
.source "ManifestDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader$DelegateProxy;
    }
.end annotation


# instance fields
.field private final jobFactory:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;

.field private final manifestJobs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;)V
    .locals 1

    const-string v0, "jobFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;->jobFactory:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;

    .line 29
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;->manifestJobs:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$getManifestJobs$p(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;->manifestJobs:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public final cancelManifestDownload(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)Z
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;->cancelManifestDownload(Lcom/amazon/kindle/model/content/IBookID;)Z

    move-result p1

    return p1
.end method

.method public final cancelManifestDownload(Lcom/amazon/kindle/model/content/IBookID;)Z
    .locals 1

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;->manifestJobs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->cancel()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final downloadManifest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;)Z
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;->jobFactory:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;

    new-instance v1, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader$DelegateProxy;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader$DelegateProxy;-><init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;)V

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;->createJob(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;)Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;

    move-result-object p2

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;->manifestJobs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->start()Z

    const/4 p1, 0x1

    :goto_0
    return p1
.end method
