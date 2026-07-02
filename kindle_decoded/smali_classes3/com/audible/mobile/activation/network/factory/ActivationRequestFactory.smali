.class public Lcom/audible/mobile/activation/network/factory/ActivationRequestFactory;
.super Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;
.source "ActivationRequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory<",
        "Lcom/audible/mobile/activation/network/ActivationRequest;",
        "Lcom/audible/mobile/activation/network/factory/ActivationRequestData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;)V

    return-void
.end method


# virtual methods
.method protected newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/activation/network/factory/ActivationRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/activation/network/ActivationRequest;
    .locals 6

    .line 25
    new-instance v1, Lcom/audible/mobile/activation/network/ActivationCommand;

    invoke-virtual {p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Lcom/audible/mobile/activation/network/ActivationCommand;-><init>(Landroid/content/Context;Lcom/audible/mobile/activation/network/factory/ActivationRequestData;)V

    .line 26
    new-instance v5, Lcom/audible/mobile/activation/network/ActivationRequest$Key;

    invoke-direct {v5, p2}, Lcom/audible/mobile/activation/network/ActivationRequest$Key;-><init>(Lcom/audible/mobile/activation/network/factory/ActivationRequestData;)V

    .line 27
    new-instance p2, Lcom/audible/mobile/activation/network/ActivationRequest;

    move-object v0, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/audible/mobile/activation/network/ActivationRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/activation/network/ActivationRequest$Key;)V

    return-object p2
.end method

.method protected bridge synthetic newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 15
    check-cast p2, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/mobile/activation/network/factory/ActivationRequestFactory;->newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/activation/network/factory/ActivationRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/activation/network/ActivationRequest;

    move-result-object p1

    return-object p1
.end method
