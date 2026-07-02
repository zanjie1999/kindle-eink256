.class public Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;
.super Lcom/amazon/whispersync/AmazonDevice/Common/Action;
.source "DownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction$SingleDownload;
    }
.end annotation


# instance fields
.field private mDownloadManifest:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

.field private final mEngine:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;

.field private final mInFlightDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction$SingleDownload;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:[Ljava/lang/Object;

.field private mNumItemsCompleted:I

.field private final mParser:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;

.field private final mSettings:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Action;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mLock:[Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mEngine:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;

    .line 57
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;

    invoke-direct {p1}, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mParser:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;

    .line 58
    invoke-virtual {p2}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettingsBuilder;->build()Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mSettings:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mInFlightDownloads:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->singleDownloadHasFinished()V

    return-void
.end method

.method private processAllItems()V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mSettings:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;->getDownloadEngineDelegate()Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    .line 98
    iget-object v4, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mDownloadManifest:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

    invoke-virtual {v4}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->getNumDownloadItems()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 100
    new-instance v4, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction$SingleDownload;

    invoke-direct {v4, p0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction$SingleDownload;-><init>(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;)V

    .line 101
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mInFlightDownloads:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mEngine:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;

    iget-object v6, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mDownloadManifest:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

    invoke-virtual {v6, v2, v3}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->getDownloadItem(J)Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;

    move-result-object v2

    invoke-virtual {v0, v5, v2, v4}, Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;->downloadItem(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private singleDownloadHasFinished()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget v1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mNumItemsCompleted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mNumItemsCompleted:I

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v1

    .line 116
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mDownloadManifest:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

    invoke-virtual {v2}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->getNumDownloadItems()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 118
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mSettings:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;->getDownloadEngineDelegate()Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mEngine:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;->allDownloadsComplete(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngine;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 114
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mSettings:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;->getManifest()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "DownloadAction: Could not start as manifest was not set"

    .line 68
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mParser:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;

    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mSettings:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;

    invoke-virtual {v2}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;->getManifest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->parse(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mParser:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    move-result-object v0

    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;->ManifestParserErrorInvalidFormat:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    if-ne v0, v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "DownloadAction: Could not start as the manifest content is of unrecogonizable format"

    .line 75
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mParser:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    move-result-object v0

    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;->MainfestParserErrorInvalidJson:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    if-ne v0, v2, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "DownloadAction: Could not start as the manifest content is corrupt"

    .line 81
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mParser:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->getDownloadManifest()Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->mDownloadManifest:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

    .line 86
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "DownloadAction: Invalid DownloadManifest"

    .line 88
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 92
    :cond_3
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadAction;->processAllItems()V

    return-void
.end method
