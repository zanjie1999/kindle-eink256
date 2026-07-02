.class public abstract Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;
.super Ljava/lang/Object;
.source "IDownloadEngineDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract allDownloadsComplete(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;)V
.end method

.method public abstract downloadItem(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineCallback;)V
.end method
