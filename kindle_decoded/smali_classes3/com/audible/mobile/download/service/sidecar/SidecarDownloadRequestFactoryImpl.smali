.class public final Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequestFactoryImpl;
.super Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;
.source "SidecarDownloadRequestFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory<",
        "Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest;",
        "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;)V

    return-void
.end method


# virtual methods
.method protected newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest;
    .locals 9

    .line 32
    invoke-interface {p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 33
    invoke-interface {p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object v0

    .line 35
    invoke-interface {p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAdditionalPayload()Ljava/lang/String;

    move-result-object v1

    const-string v2, "###"

    invoke-virtual {p0, v1, v2}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->splitOnDelimeter(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {p0, v1}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->extractFormatFromOptionalPayload([Ljava/lang/String;)Lcom/audible/mobile/domain/Format;

    move-result-object v2

    .line 37
    invoke-virtual {p0, v1}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->extractGuidFromOptionalPayload([Ljava/lang/String;)Lcom/audible/mobile/domain/GUID;

    move-result-object v1

    .line 39
    new-instance v8, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;

    invoke-direct {v8, v0, p1, v1, v2}, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;-><init>(Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Format;)V

    .line 40
    new-instance v4, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadCommand;

    invoke-virtual {p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p1, v1, v2}, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadCommand;-><init>(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Format;)V

    .line 41
    new-instance v7, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;

    invoke-direct {v7, p2}, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;-><init>(Lcom/audible/mobile/download/service/LibraryDownloadRequestData;)V

    .line 42
    new-instance p1, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest;

    move-object v3, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;)V

    return-object p1
.end method

.method protected bridge synthetic newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 21
    check-cast p2, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequestFactoryImpl;->newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest;

    move-result-object p1

    return-object p1
.end method
