.class public Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;
.super Lcom/amazon/whispersync/AmazonDevice/Common/Engine;
.source "DownloadEngine.java"


# instance fields
.field private mRunningAction:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;

.field private final mSettingsBuilder:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Engine;-><init>()V

    .line 14
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;->mSettingsBuilder:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;

    return-void
.end method


# virtual methods
.method public canStart()Z
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "DownloadEngine: Cannot start the engine as it is already running"

    .line 32
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;->mSettingsBuilder:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;->canBuild()Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "DownloadEngine: All the parameters have not been set. See prior warnings."

    .line 38
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;->mRunningAction:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDownloadEngineDelegate(Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;->mSettingsBuilder:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;->setDownloadEngineDelegate(Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;)V

    return-void
.end method

.method public setManifest(Ljava/lang/String;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;->mSettingsBuilder:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;->setManifest(Ljava/lang/String;)V

    return-void
.end method

.method public start()Z
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;->canStart()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DownloadEngine: Could not start the engine as it has not been configured properly."

    .line 50
    invoke-static {v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 54
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;->mSettingsBuilder:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;-><init>(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;)V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;->mRunningAction:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;

    .line 55
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->start()V

    .line 56
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;->isRunning()Z

    move-result v0

    return v0
.end method
