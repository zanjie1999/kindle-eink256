.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;
.super Ljava/lang/Object;
.source "RegisterDeviceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;
    }
.end annotation


# instance fields
.field private mAddAsSecondaryAccount:Z

.field private mCustomerToken:Ljava/lang/String;

.field private mCustomerTokenType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;

.field private mDesiredDeviceName:Ljava/lang/String;

.field private mDeviceSerialNumber:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mLogin:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPid:Ljava/lang/String;

.field private mSecret:Ljava/lang/String;

.field private mSoftwareVersions:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;

.field private mUseExchangeToken:Z

.field private mVersionNumber:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

.field private mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;->AT_MAIN:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerTokenType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;

    return-void
.end method

.method public static isValidCustomerAccountToken(Ljava/lang/String;)Z
    .locals 2

    .line 139
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "isValidCustomerAccountToken: returning false because a null or empty auth token was given"

    .line 141
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidDeviceName(Ljava/lang/String;)Z
    .locals 2

    .line 246
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isValidDeviceName: returning false becauce a null or empty device name was given."

    .line 248
    invoke-static {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 252
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x33

    if-le p0, v0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isValidDeviceName: returning false because a device name that is too long (more than 51 characters) was given."

    .line 254
    invoke-static {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidDeviceSerialNumber(Ljava/lang/String;)Z
    .locals 0

    .line 195
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isValidDeviceSerialNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isValidDeviceType(Ljava/lang/String;)Z
    .locals 0

    .line 172
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isValidDeviceType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isValidLogin(Ljava/lang/String;)Z
    .locals 2

    .line 75
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "isValidLogin: returning false because a null or empty login was given."

    .line 77
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidPassword(Ljava/lang/String;)Z
    .locals 2

    .line 104
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "isValidPassword: returning false because a null or empty password was given."

    .line 106
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidSecret(Ljava/lang/String;)Z
    .locals 2

    .line 217
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "isValidSecret: returning false because a null or empty secret was given."

    .line 219
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAddAsSecondaryAccount()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mAddAsSecondaryAccount:Z

    return v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDeviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getWebRequest()Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;
    .locals 10

    .line 323
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getWebRequest: Cannot construct a WebRequest because the RegisterDeviceRequest is invalid. (See previous warnings from RegisterDeviceRequest::isValid for details.)"

    .line 325
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    if-eqz v0, :cond_1

    return-object v0

    .line 335
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    .line 337
    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->WebProtocolHttps:Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setProtocol(Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;)V

    .line 339
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v2, "host.firs"

    const-string v3, "firs-ta-g7g.amazon.com"

    invoke-static {v2, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHost(Ljava/lang/String;)V

    .line 341
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mUseExchangeToken:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v3, "/FirsProxy/registerAssociatedDevice"

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setPath(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setAuthenticationRequired(Z)V

    goto :goto_0

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerToken:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mAddAsSecondaryAccount:Z

    if-nez v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v3, "/FirsProxy/registerDeviceWithToken"

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setPath(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerToken:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mAddAsSecondaryAccount:Z

    if-eqz v0, :cond_4

    .line 352
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v3, "/FirsProxy/registerDeviceToSecondaryCustomer"

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setPath(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setAuthenticationRequired(Z)V

    goto :goto_0

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v3, "/FirsProxy/registerDevice"

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setPath(Ljava/lang/String;)V

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    sget-object v3, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbPost:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setVerb(Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;)V

    .line 362
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v3, "Content-Type"

    const-string/jumbo v4, "text/xml"

    invoke-virtual {v0, v3, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v3, "Expect"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    new-array v3, v1, [Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;

    const-string/jumbo v4, "request"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;-><init>(Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)V

    .line 366
    new-instance v3, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    const/4 v4, 0x3

    new-array v5, v4, [Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;

    new-instance v6, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    iget-object v7, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDeviceType:Ljava/lang/String;

    new-array v8, v1, [Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;

    const-string v9, "deviceType"

    invoke-direct {v6, v9, v7, v8}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;)V

    aput-object v6, v5, v1

    new-instance v6, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    iget-object v7, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDeviceSerialNumber:Ljava/lang/String;

    new-array v8, v1, [Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;

    const-string v9, "deviceSerialNumber"

    invoke-direct {v6, v9, v7, v8}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;)V

    aput-object v6, v5, v2

    new-instance v6, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    iget-object v7, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mPid:Ljava/lang/String;

    new-array v8, v1, [Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;

    const-string/jumbo v9, "pid"

    invoke-direct {v6, v9, v7, v8}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;)V

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string/jumbo v6, "parameters"

    invoke-direct {v3, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;-><init>(Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)V

    .line 372
    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChild(Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)Z

    .line 374
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDesiredDeviceName:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v6, "deviceName"

    .line 376
    invoke-virtual {v3, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChildElement(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    .line 379
    :cond_5
    iget-boolean v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mUseExchangeToken:Z

    if-eqz v5, :cond_7

    .line 383
    iget-boolean v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mAddAsSecondaryAccount:Z

    if-eqz v5, :cond_6

    const-string v5, "false"

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "true"

    :goto_1
    const-string v6, "deregisterExisting"

    invoke-virtual {v3, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChildElement(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    goto :goto_2

    .line 387
    :cond_7
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerToken:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 389
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mLogin:Ljava/lang/String;

    const-string v6, "email"

    invoke-virtual {v3, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChildElement(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    .line 390
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mPassword:Ljava/lang/String;

    const-string/jumbo v6, "password"

    invoke-virtual {v3, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChildElement(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    goto :goto_2

    .line 392
    :cond_8
    iget-boolean v6, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mAddAsSecondaryAccount:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "secondaryAccessToken"

    .line 394
    invoke-virtual {v3, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChildElement(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    .line 395
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerTokenType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;

    invoke-virtual {v5}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "secondaryAccessTokenType"

    invoke-virtual {v3, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChildElement(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    goto :goto_2

    :cond_9
    const-string v6, "authToken"

    .line 399
    invoke-virtual {v3, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChildElement(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    .line 400
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerTokenType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;

    invoke-virtual {v5}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "authTokenType"

    invoke-virtual {v3, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChildElement(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    .line 404
    :goto_2
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mSecret:Ljava/lang/String;

    if-eqz v5, :cond_a

    const-string/jumbo v6, "secret"

    .line 406
    invoke-virtual {v3, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChildElement(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    .line 409
    :cond_a
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mVersionNumber:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->isValid()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 411
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mVersionNumber:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    invoke-virtual {v5}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->getString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "softwareVersion"

    invoke-virtual {v3, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChildElement(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    .line 414
    :cond_b
    new-instance v3, Lcom/amazon/whispersync/AmazonDevice/Common/XMLSoftwareVersions;

    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mSoftwareVersions:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;

    invoke-direct {v3, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLSoftwareVersions;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;)V

    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChild(Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)Z

    .line 416
    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->convertToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setBody(Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/Object;

    .line 418
    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDeviceType:Ljava/lang/String;

    aput-object v3, v0, v1

    iget-boolean v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mAddAsSecondaryAccount:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "getWebRequest: constructed a web request with:\nDevice Type: %s\nIs Secondary Account: %s"

    invoke-static {v3, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/LogType;->PIILogType:Lcom/amazon/whispersync/AmazonDevice/Common/LogType;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDeviceSerialNumber:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDesiredDeviceName:Ljava/lang/String;

    aput-object v1, v3, v2

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mLogin:Ljava/lang/String;

    aput-object v1, v3, v7

    const-string v1, "Serial Number: %s\nDevice Name: %s\nLogin: %s"

    invoke-static {v0, v1, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Lcom/amazon/whispersync/AmazonDevice/Common/LogType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mLogin:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerToken:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mUseExchangeToken:Z

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "isValid: returning false because a valid login has not been set."

    .line 282
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mPassword:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerToken:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mUseExchangeToken:Z

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "isValid: returning false because a valid password has not been set."

    .line 288
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerToken:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mLogin:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mPassword:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mUseExchangeToken:Z

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "isValid: returning false because a valid auth token has not been set."

    .line 294
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 298
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mAddAsSecondaryAccount:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerToken:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerTokenType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;

    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;->ACCESS_TOKEN:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;

    if-eq v0, v2, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mUseExchangeToken:Z

    if-nez v0, :cond_4

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "isValid: returning false because only an access token can be used to register a secondaryAccount"

    .line 302
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDeviceType:Ljava/lang/String;

    if-nez v0, :cond_5

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "isValid: returning false because a valid device type has not been set."

    .line 308
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDeviceSerialNumber:Ljava/lang/String;

    if-nez v0, :cond_6

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "isValid: returning false because a valid serial number has not been set."

    .line 314
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setAddAsSecondaryAccount(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mAddAsSecondaryAccount:Z

    return-void
.end method

.method public setCustomerAccountToken(Ljava/lang/String;)Z
    .locals 2

    .line 115
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->isValidCustomerAccountToken(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "setCustomerAccountToken: password was invalid. Cannot be set."

    .line 117
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mLogin:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerToken:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "setCustomerAccountToken: cannot specify both an auth token and a login/password. Cannot be set."

    .line 123
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public setCustomerAccountTokenType(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerTokenType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest$CustomerAccountTokenType;

    return-void
.end method

.method public setDesiredDeviceName(Ljava/lang/String;)Z
    .locals 2

    .line 233
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->isValidDeviceName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setDesiredDeviceName: desired device name was invalid. Cannot be set."

    .line 235
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 239
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDesiredDeviceName:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)Z
    .locals 2

    .line 182
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->isValidDeviceSerialNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setDeviceSerialNumber: device serial number was invalid. Cannot be set."

    .line 184
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 188
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDeviceSerialNumber:Ljava/lang/String;

    .line 189
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/PIDGenerator;->getPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mPid:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setDeviceType(Ljava/lang/String;)Z
    .locals 2

    .line 160
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->isValidDeviceType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setDeviceType: deviceType was invalid. Cannot be set."

    .line 162
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mDeviceType:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setLogin(Ljava/lang/String;)Z
    .locals 2

    .line 57
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->isValidLogin(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "setLogin: login was invalid. Cannot be set."

    .line 59
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "setLogin: cannot specify both a login and an auth token. Cannot be set."

    .line 65
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mLogin:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setPassword(Ljava/lang/String;)Z
    .locals 2

    .line 86
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "setPassword: login was invalid. Cannot be set."

    .line 88
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mCustomerToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "setPassword: cannot specify both a password and an auth token. Cannot be set."

    .line 94
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 98
    :cond_1
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mPassword:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setSecret(Ljava/lang/String;)Z
    .locals 2

    .line 205
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->isValidSecret(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "setSecret: secret was invalid. Cannot set."

    .line 207
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 211
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mSecret:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setSoftwareVersions(Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mSoftwareVersions:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;

    return-void
.end method

.method public setUseExchangeToken(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mUseExchangeToken:Z

    return-void
.end method

.method public setVersionNumber(Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;)V
    .locals 1

    .line 264
    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "setVersionNumber: version number is invalid. Cannot be set."

    .line 266
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceRequest;->mVersionNumber:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;

    return-void
.end method
