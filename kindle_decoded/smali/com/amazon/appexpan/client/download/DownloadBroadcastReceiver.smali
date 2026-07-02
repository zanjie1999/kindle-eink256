.class public Lcom/amazon/appexpan/client/download/DownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadBroadcastReceiver.java"


# instance fields
.field resourceDownloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;


# direct methods
.method public constructor <init>(Lcom/amazon/appexpan/client/download/ResourceDownloadManager;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amazon/appexpan/client/download/DownloadBroadcastReceiver;->resourceDownloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    .line 20
    iput-object p1, p0, Lcom/amazon/appexpan/client/download/DownloadBroadcastReceiver;->resourceDownloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "extra_download_id"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 27
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/DownloadBroadcastReceiver;->resourceDownloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->updateResourceState(J)V

    return-void
.end method
