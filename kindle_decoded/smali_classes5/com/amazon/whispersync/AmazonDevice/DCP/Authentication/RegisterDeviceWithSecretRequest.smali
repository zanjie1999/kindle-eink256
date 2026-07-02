.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;
.super Ljava/lang/Object;
.source "RegisterDeviceWithSecretRequest.java"


# instance fields
.field private mDeviceSerialNumber:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mRadioId:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private mSecondaryRadioId:Ljava/lang/String;

.field private mSecret:Ljava/lang/String;

.field private mVersionNumber:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

.field private mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidDeviceSerialNumber(Ljava/lang/String;)Z
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isValidDeviceSerialNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isValidDeviceType(Ljava/lang/String;)Z
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isValidDeviceType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isValidRadioId(Ljava/lang/String;)Z
    .locals 2

    .line 110
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isValidRadioId: returning false because a null or empty radio id was given."

    .line 112
    invoke-static {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isAlphaNumeric(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isValidRadioId: returning false because a non alpha radio id number was given."

    .line 118
    invoke-static {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidReason(Ljava/lang/String;)Z
    .locals 2

    .line 151
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "isValidReason: returning false because a null or empty reason was given."

    .line 153
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidSecret(Ljava/lang/String;)Z
    .locals 2

    .line 87
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "isValidSecret: returning false because a null or empty secret was given."

    .line 89
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mDeviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getWebRequest()Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;
    .locals 7

    .line 203
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getWebRequest: Cannot construct a WebRequest because the RegisterDeviceWithSecretRequest is invalid. (See previous warnings from RegisterDeviceWithSecretRequest::isValid for details.)"

    .line 205
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    if-eqz v0, :cond_1

    return-object v0

    .line 216
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    .line 218
    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->WebProtocolHttps:Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setProtocol(Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;)V

    .line 219
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v2, "host.firs"

    const-string v3, "firs-ta-g7g.amazon.com"

    invoke-static {v2, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHost(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v2, "/FirsProxy/getNewDeviceCredentials"

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setPath(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbGet:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setVerb(Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;)V

    .line 223
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;-><init>()V

    .line 224
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mDeviceType:Ljava/lang/String;

    const-string v3, "deviceType"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mDeviceSerialNumber:Ljava/lang/String;

    const-string v3, "deviceSerialNumber"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mSecret:Ljava/lang/String;

    const-string/jumbo v3, "secret"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mRadioId:Ljava/lang/String;

    const-string/jumbo v3, "radioId"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mSecondaryRadioId:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string/jumbo v3, "secondaryRadioId"

    .line 231
    invoke-virtual {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_2
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mReason:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string/jumbo v3, "reason"

    .line 236
    invoke-virtual {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_3
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mVersionNumber:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mVersionNumber:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    invoke-virtual {v2}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->getString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "softwareVersion"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_4
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/FormPostRequestBuilder;->updateRequest(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;)V

    .line 246
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setAuthenticationRequired(Z)V

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    .line 248
    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mDeviceType:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mReason:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mVersionNumber:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->getString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const-string v3, ""

    :goto_0
    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "getWebRequest: constructed a web request with:\nDevice Type: %s\nReason: %s\nVersion Number: %s"

    invoke-static {v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->PIILogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mDeviceSerialNumber:Ljava/lang/String;

    aput-object v6, v3, v1

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mRadioId:Ljava/lang/String;

    aput-object v1, v3, v4

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mSecondaryRadioId:Ljava/lang/String;

    aput-object v1, v3, v5

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mSecret:Ljava/lang/String;

    aput-object v1, v3, v0

    const-string v0, "Device Serial Number: %s\nRadio Id: %s\nSecondary Radio Id: %s\nSecret: %s"

    invoke-static {v2, v0, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mDeviceType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "isValid: returning false because a valid device type has not been set."

    .line 176
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mDeviceSerialNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "isValid: returning false because a valid device serial number has not been set."

    .line 182
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mSecret:Ljava/lang/String;

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "isValid: returning false because a valid secret has not been set."

    .line 188
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mRadioId:Ljava/lang/String;

    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "isValid: returning false because a valid radio id has not been set."

    .line 194
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)Z
    .locals 2

    .line 53
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->isValidDeviceSerialNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setDeviceSerialNumber: device serial number was invalid. Cannot be set."

    .line 55
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mDeviceSerialNumber:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setDeviceType(Ljava/lang/String;)Z
    .locals 2

    .line 31
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->isValidDeviceType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setDeviceType: deviceType was invalid. Cannot be set."

    .line 33
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mDeviceType:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setRadioId(Ljava/lang/String;)Z
    .locals 2

    .line 98
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->isValidRadioId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setRadioId: radio id was invalid. Cannot set."

    .line 100
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mRadioId:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setReason(Ljava/lang/String;)Z
    .locals 2

    .line 139
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->isValidReason(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setReason: reason was invalid. Cannot set."

    .line 141
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mReason:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setSecondaryRadioId(Ljava/lang/String;)Z
    .locals 2

    .line 127
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->isValidRadioId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setSecondaryRadioId: radio id was invalid. Cannot set."

    .line 129
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mSecondaryRadioId:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setSecret(Ljava/lang/String;)Z
    .locals 2

    .line 75
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->isValidSecret(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setSecret: secret was invalid. Cannot set."

    .line 77
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mSecret:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setVersionNumber(Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;)Z
    .locals 2

    .line 162
    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setVersionNumber: version number was invalid. Cannot set."

    .line 164
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 168
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceWithSecretRequest;->mVersionNumber:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    const/4 p1, 0x1

    return p1
.end method
