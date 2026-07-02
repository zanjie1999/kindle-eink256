.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;
.super Ljava/lang/Object;
.source "DeregisterDeviceRequest.java"


# instance fields
.field private mDeregisterExisting:Z

.field private mDidDeleteContent:Z

.field private mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWebRequest()Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    if-eqz v0, :cond_0

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    .line 39
    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->WebProtocolHttps:Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setProtocol(Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;)V

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v1, "host.firs"

    const-string v2, "firs-ta-g7g.amazon.com"

    invoke-static {v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHost(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v1, "/FirsProxy/disownFiona"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setPath(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbGet:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setVerb(Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;)V

    .line 44
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mDidDeleteContent:Z

    const-string/jumbo v1, "true"

    const-string v2, "false"

    const-string v3, "contentDeleted"

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0, v3, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mDeregisterExisting:Z

    const-string v3, "deregisterExisting"

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0, v3, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_1
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v1, "Content-Type"

    const-string/jumbo v2, "text/xml"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setAuthenticationRequired(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 66
    iget-boolean v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mDidDeleteContent:Z

    if-eqz v2, :cond_3

    const-string v2, "Yes"

    goto :goto_2

    :cond_3
    const-string v2, "No"

    :goto_2
    aput-object v2, v0, v1

    const-string v1, "DeregisterDeviceRequest: getWebRequest: constructed a web request with:\nContent Deleted: %s"

    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    return-object v0
.end method

.method public setDeregisterAllAccountsForDevice(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mDeregisterExisting:Z

    return-void
.end method

.method public setDidDeleteContent(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceRequest;->mDidDeleteContent:Z

    return-void
.end method
