.class public final Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequestFactoryImpl;
.super Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;
.source "SubscriptionDownloadRequestFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory<",
        "Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest;",
        "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;)V

    return-void
.end method


# virtual methods
.method protected newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest;
    .locals 9

    .line 30
    invoke-interface {p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAdditionalPayload()Ljava/lang/String;

    move-result-object p1

    .line 31
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/audible/mobile/util/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 32
    new-instance v8, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;

    invoke-interface {p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object p1

    invoke-direct {v8, p1, v0}, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;-><init>(Lcom/audible/mobile/domain/CustomerId;Ljava/util/Date;)V

    .line 33
    new-instance v4, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadCommand;

    invoke-virtual {p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1, v0}, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadCommand;-><init>(Landroid/content/Context;Ljava/util/Date;)V

    .line 34
    new-instance v7, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;

    invoke-direct {v7, p2}, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;-><init>(Lcom/audible/mobile/download/service/LibraryDownloadRequestData;)V

    .line 35
    new-instance p1, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest;

    move-object v3, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest;-><init>(Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;)V

    return-object p1
.end method

.method protected bridge synthetic newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 20
    check-cast p2, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequestFactoryImpl;->newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest;

    move-result-object p1

    return-object p1
.end method
