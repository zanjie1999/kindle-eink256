.class public Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;
.super Ljava/lang/Object;
.source "DownloadEngineSettingsBuilder.java"


# instance fields
.field private mDelegate:Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;

.field private mManifest:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;->canBuild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DownloadEngineSettingsBuilder: could not build a DownloadEngineSettings because we lack the proper settings"

    .line 46
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;->mManifest:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;->mDelegate:Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;)V

    return-object v0
.end method

.method public canBuild()Z
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;->mManifest:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "DownloadEngineSettingsBuilder: Manifest Content has not been set"

    .line 29
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;->mDelegate:Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "DownloadEngineSettingsBuilder: DownloadEngine delegate has not been set"

    .line 35
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setDownloadEngineDelegate(Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;->mDelegate:Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;

    return-void
.end method

.method public setManifest(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;->mManifest:Ljava/lang/String;

    return-void
.end method
