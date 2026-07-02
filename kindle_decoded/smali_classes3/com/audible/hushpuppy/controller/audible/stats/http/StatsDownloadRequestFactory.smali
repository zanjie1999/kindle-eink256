.class final Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequestFactory;
.super Ljava/lang/Object;
.source "StatsDownloadRequestFactory.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/network/common/IDownloadRequestFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/service/network/common/IDownloadRequestFactory<",
        "Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest;",
        "Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context can\'t be null."

    .line 33
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequestFactory;->context:Landroid/content/Context;

    return-void
.end method

.method private getNetworkStatPolicy(Lcom/audible/mobile/downloader/factory/DownloadType;)Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;
    .locals 1

    .line 58
    invoke-interface {p1}, Lcom/audible/mobile/downloader/factory/DownloadType;->getType()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequestFactory;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/audible/mobile/downloader/policy/NetworkPolicyController;->getPolicy(Ljava/lang/String;Landroid/content/Context;)Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;

    move-result-object p1

    return-object p1
.end method

.method private getRetryPolicy(Lcom/audible/mobile/downloader/factory/DownloadType;)Lcom/audible/mobile/downloader/policy/RetryPolicy;
    .locals 0

    .line 71
    invoke-interface {p1}, Lcom/audible/mobile/downloader/factory/DownloadType;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/downloader/policy/RetryPolicyController;->getPolicy(Ljava/lang/String;)Lcom/audible/mobile/downloader/policy/RetryPolicy;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public newDownloadRequest(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/factory/DownloadType;ZLcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;)Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest;
    .locals 7

    .line 42
    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequestFactory;->getNetworkStatPolicy(Lcom/audible/mobile/downloader/factory/DownloadType;)Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;

    move-result-object v2

    .line 43
    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequestFactory;->getRetryPolicy(Lcom/audible/mobile/downloader/factory/DownloadType;)Lcom/audible/mobile/downloader/policy/RetryPolicy;

    move-result-object v3

    .line 45
    new-instance p2, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest;

    move-object v0, p2

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;ZLcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;)V

    return-object p2
.end method

.method public bridge synthetic newDownloadRequest(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/factory/DownloadType;ZLcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 22
    check-cast p5, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;

    invoke-virtual/range {p0 .. p5}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequestFactory;->newDownloadRequest(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/factory/DownloadType;ZLcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;)Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest;

    move-result-object p1

    return-object p1
.end method
