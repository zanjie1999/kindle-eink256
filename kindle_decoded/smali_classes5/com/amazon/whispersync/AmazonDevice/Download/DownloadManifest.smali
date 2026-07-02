.class public Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;
.super Ljava/lang/Object;
.source "DownloadManifest.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addDownloadItem(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDownloadId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadItem(J)Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->mItems:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;

    return-object p1
.end method

.method public getDownloadType()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getNumDownloadItems()J
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isValid()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->mType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setDownloadId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->mId:Ljava/lang/String;

    return-void
.end method

.method setDownloadType(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->mType:Ljava/lang/String;

    return-void
.end method
