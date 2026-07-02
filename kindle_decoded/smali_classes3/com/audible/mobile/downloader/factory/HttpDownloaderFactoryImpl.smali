.class public final Lcom/audible/mobile/downloader/factory/HttpDownloaderFactoryImpl;
.super Lcom/audible/mobile/downloader/factory/AbstractHttpDownloaderFactory;
.source "HttpDownloaderFactoryImpl.java"


# direct methods
.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/factory/AbstractHttpDownloaderFactory;-><init>(Lcom/audible/mobile/identity/IdentityManager;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;)Lcom/audible/mobile/downloader/interfaces/Downloader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/interfaces/DownloadRequest<",
            "+",
            "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
            ">;)",
            "Lcom/audible/mobile/downloader/interfaces/Downloader;"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->requiresAuthentication()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/factory/AbstractHttpDownloaderFactory;->newSecureHttpDownloader()Lcom/audible/mobile/downloader/interfaces/Downloader;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/factory/AbstractHttpDownloaderFactory;->newNonSecureHttpDownloader()Lcom/audible/mobile/downloader/interfaces/Downloader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/downloader/factory/HttpDownloaderFactoryImpl;->get(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;)Lcom/audible/mobile/downloader/interfaces/Downloader;

    move-result-object p1

    return-object p1
.end method
