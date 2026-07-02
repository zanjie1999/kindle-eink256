.class final Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest;
.super Lcom/audible/mobile/downloader/AbstractDownloadRequest;
.source "StatsDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;ZLcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/hushpuppy/controller/audible/stats/http/StatsDownloadRequest$Key;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/audible/mobile/downloader/AbstractDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;ZLcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)V

    return-void
.end method
