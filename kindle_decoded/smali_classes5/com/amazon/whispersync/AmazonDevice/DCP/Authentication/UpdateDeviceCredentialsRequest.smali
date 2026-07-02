.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;
.super Ljava/lang/Object;
.source "UpdateDeviceCredentialsRequest.java"


# instance fields
.field private mReason:Ljava/lang/String;

.field private mSoftwareVersion:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

.field private mUrl:Ljava/lang/String;

.field private mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mUrl:Ljava/lang/String;

    return-void
.end method

.method private getDefaultUrl()Ljava/lang/String;
    .locals 3

    const-string v0, "host.firs"

    const-string v1, "firs-ta-g7g.amazon.com"

    .line 25
    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/FirsProxy/getDeviceCredentials"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isValidReason(Ljava/lang/String;)Z
    .locals 2

    .line 65
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "isValidReason: returning false because a null or empty reason was given."

    .line 67
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidSoftwareVersion(Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isValidURL(Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->isValidUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getWebRequest()Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;
    .locals 4

    .line 105
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getWebRequest: Cannot construct a WebRequest because the UpdateDeviceCredentialsRequest is invalid. (See previous warnings from UpdateDeviceCredentialsRequest::isValid for details.)"

    .line 107
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    if-eqz v0, :cond_1

    return-object v0

    .line 117
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    .line 118
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setUrl(Ljava/lang/String;)Z

    .line 119
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbGet:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setVerb(Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;)V

    .line 121
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mReason:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 123
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string/jumbo v3, "reason"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mSoftwareVersion:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    if-eqz v0, :cond_3

    .line 128
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->getString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "softwareVersion"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v2, "Content-Type"

    const-string/jumbo v3, "text/xml"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setAuthenticationRequired(Z)V

    new-array v0, v2, [Ljava/lang/Object;

    .line 134
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mReason:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "getWebRequest: constructed a web request with:\nReason: %s"

    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "isValid: returning false because a valid url has not been set."

    .line 96
    invoke-static {v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setReason(Ljava/lang/String;)Z
    .locals 2

    .line 52
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->isValidReason(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setReason: reason was invalid. Cannot be set."

    .line 54
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mReason:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setSoftwareVersion(Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;)Z
    .locals 2

    .line 76
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->isValidSoftwareVersion(Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setSoftwareVersion: software version was invalid. Cannot be set."

    .line 78
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mSoftwareVersion:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    const/4 p1, 0x1

    return p1
.end method

.method public setURL(Ljava/lang/String;)Z
    .locals 2

    .line 32
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->isValidURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setURL: url is invalid. Cannot be set. Invalidating default URL to prevent it from being used."

    .line 34
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mUrl:Ljava/lang/String;

    return p1

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/UpdateDeviceCredentialsRequest;->mUrl:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
