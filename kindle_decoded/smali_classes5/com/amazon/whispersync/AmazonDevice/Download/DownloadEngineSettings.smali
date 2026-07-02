.class public Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;
.super Ljava/lang/Object;
.source "DownloadEngineSettings.java"


# instance fields
.field private final mDelegate:Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;

.field private final mManifest:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;->mManifest:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;->mDelegate:Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;

    return-void
.end method


# virtual methods
.method public getDownloadEngineDelegate()Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;->mDelegate:Lcom/amazon/whispersync/AmazonDevice/Download/IDownloadEngineDelegate;

    return-object v0
.end method

.method public getManifest()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadEngineSettings;->mManifest:Ljava/lang/String;

    return-object v0
.end method
