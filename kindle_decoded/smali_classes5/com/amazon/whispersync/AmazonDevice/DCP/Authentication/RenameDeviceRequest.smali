.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;
.super Ljava/lang/Object;
.source "RenameDeviceRequest.java"


# instance fields
.field private mDeviceName:Ljava/lang/String;

.field private mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidDeviceName(Ljava/lang/String;)Z
    .locals 2

    .line 37
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isValidDeviceName: returning false becauce a null or empty name was given."

    .line 39
    invoke-static {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 43
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x33

    if-le p0, v0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isValidDeviceName: returning false because a device name that is too long (more than 51 characters) was given."

    .line 45
    invoke-static {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getWebRequest()Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mDeviceName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getWebRequest: Cannot construct a WebRequest because the RenameDeviceRequest is invalid. (See previous warnings from RenameDeviceRequest::isValidDeviceName for details.)"

    .line 57
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    if-eqz v0, :cond_1

    return-object v0

    .line 67
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    .line 69
    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->WebProtocolHttps:Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setProtocol(Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v2, "host.firs"

    const-string v3, "firs-ta-g7g.amazon.com"

    invoke-static {v2, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHost(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v2, "/FirsProxy/renameFiona"

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setPath(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbGet:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setVerb(Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;)V

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 75
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v3, "nickname"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v2, "Content-Type"

    const-string/jumbo v3, "text/xml"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setAuthenticationRequired(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "getWebRequest: getWebRequest: constructed a web request."

    .line 82
    invoke-static {v3, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->PIILogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "Device new name: %s"

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    return-object v0
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 2

    .line 23
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->isValidDeviceName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setDeviceName: device name was invalid. Cannot be set."

    .line 25
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceRequest;->mDeviceName:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
