.class public Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;
.super Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;
.source "AssetDownloadRequest.java"


# static fields
.field private static final GET_METHOD:Ljava/lang/String; = "GET"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.ftue.assets.AssetDownloadRequest"


# instance fields
.field private final asset:Lcom/amazon/kedu/ftue/assets/RemoteAsset;

.field private final assetFileHelper:Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

.field private final downloadStartTime:J

.field private final fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

.field private final handler:Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

.field private final manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kedu/ftue/assets/IFileProvider;Lcom/amazon/kedu/ftue/assets/AssetFileHelper;Lcom/amazon/kedu/ftue/assets/AssetManifest;Lcom/amazon/kedu/ftue/assets/RemoteAsset;Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    .line 42
    iput-object p2, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->assetFileHelper:Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

    .line 43
    iput-object p3, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    .line 44
    iput-object p4, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->asset:Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    .line 45
    iput-object p5, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->handler:Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->downloadStartTime:J

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)Lcom/amazon/kedu/ftue/assets/IFileProvider;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)Lcom/amazon/kedu/ftue/assets/AssetFileHelper;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->assetFileHelper:Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)Lcom/amazon/kedu/ftue/assets/RemoteAsset;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->asset:Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->downloadStartTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->handler:Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    return-object p0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method public getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBody()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v0}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getAssetDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->asset:Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "output path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->asset:Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    invoke-virtual {v3}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 139
    new-instance v0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;-><init>(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->asset:Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
