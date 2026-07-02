.class public Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;
.super Ljava/lang/Object;
.source "DownloadItem.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;->mType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;->mName:Ljava/lang/String;

    return-void
.end method

.method setType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;->mType:Ljava/lang/String;

    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;->mUrl:Ljava/lang/String;

    return-void
.end method
