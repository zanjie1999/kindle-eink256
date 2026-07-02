.class public Lcom/amazon/kindle/services/download/DownloadRequestComparator;
.super Ljava/lang/Object;
.source "DownloadRequestComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/services/download/IDownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/services/download/IDownloadRequest;)I
    .locals 2

    .line 20
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->getPriority()I

    move-result v0

    .line 21
    invoke-interface {p2}, Lcom/amazon/kindle/webservices/IWebRequest;->getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 24
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/AssetPriority;->getPriority()I

    move-result p1

    .line 25
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/services/download/AssetPriority;->getPriority()I

    move-result p2

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    check-cast p2, Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/services/download/DownloadRequestComparator;->compare(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/services/download/IDownloadRequest;)I

    move-result p1

    return p1
.end method
