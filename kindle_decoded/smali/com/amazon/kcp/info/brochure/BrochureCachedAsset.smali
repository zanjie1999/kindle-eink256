.class public Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;
.super Ljava/lang/Object;
.source "BrochureCachedAsset.java"


# instance fields
.field private downloadedFile:Ljava/io/File;

.field private request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->url:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "BrochureCachedAsset"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->downloadedFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getDownloadedFile()Ljava/io/File;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->downloadedFile:Ljava/io/File;

    return-object v0
.end method

.method public getRequest()Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setRequest(Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrochureCachedAsset{downloadedFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->downloadedFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
