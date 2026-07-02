.class public Lcom/amazon/ea/purchase/client/request/BuyRequest;
.super Ljava/lang/Object;
.source "BuyRequest.java"


# instance fields
.field private final request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    .line 30
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    .line 32
    new-instance v3, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    invoke-direct {v3, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    const-string/jumbo p1, "method"

    const-string v4, "buyAsin"

    .line 33
    invoke-virtual {v3, p1, v4}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    .line 34
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getCountryOfResidence()Ljava/lang/String;

    move-result-object p1

    const-string v1, "country"

    invoke-virtual {v3, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    .line 35
    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object p1

    const-string v1, "dsn"

    invoke-virtual {v3, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    .line 36
    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "deviceType"

    invoke-virtual {v3, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string p1, "EndActions"

    const-string/jumbo v1, "site"

    .line 37
    invoke-virtual {v3, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string/jumbo v1, "userCode"

    .line 38
    invoke-virtual {v3, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    .line 39
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAssociateTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "tag"

    invoke-virtual {v3, v0, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addOptParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    .line 40
    invoke-virtual {v3}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addAccessTokenCookie()Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    .line 41
    invoke-virtual {v3}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addXACBCookie()Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    iput-object v3, p0, Lcom/amazon/ea/purchase/client/request/BuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-void
.end method


# virtual methods
.method public execute()Lcom/amazon/ea/purchase/client/response/BuyResponse;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/BuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->execute()Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/purchase/client/response/BuyResponse;->parse(Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;)Lcom/amazon/ea/purchase/client/response/BuyResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAsin(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BuyRequest;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/BuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string v1, "asin"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method

.method public setPrice(Ljava/math/BigDecimal;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BuyRequest;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/BuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "ourPriceAmount"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string/jumbo p1, "ourPriceCurrency"

    invoke-virtual {v0, p1, p2}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method

.method public setRefTag(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BuyRequest;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/BuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string/jumbo v1, "ref_"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addOptParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BuyRequest;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/BuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addSessionCookie(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method

.method public setTokens(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BuyRequest;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/BuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addTokens(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method
