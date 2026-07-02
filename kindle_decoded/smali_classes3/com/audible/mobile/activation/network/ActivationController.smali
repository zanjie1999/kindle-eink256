.class public Lcom/audible/mobile/activation/network/ActivationController;
.super Lcom/audible/mobile/downloader/BaseDownloadController;
.source "ActivationController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/BaseDownloadController<",
        "Lcom/audible/mobile/activation/network/ActivationRequest;",
        "Lcom/audible/mobile/activation/network/ActivationRequest$Key;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/downloader/BaseDownloadController;-><init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;)V

    return-void
.end method
