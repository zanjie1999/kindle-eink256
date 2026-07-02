.class public Lcom/audible/mobile/downloader/BaseDownloadController;
.super Lcom/audible/mobile/downloader/AbstractDownloadController;
.source "BaseDownloadController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest<",
        "TKey;>;Key::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
        ">",
        "Lcom/audible/mobile/downloader/AbstractDownloadController<",
        "TRequest;TKey;",
        "Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest<",
        "TRequest;TKey;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/downloader/AbstractDownloadController;-><init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;)V

    return-void
.end method
