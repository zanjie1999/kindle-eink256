.class public Lcom/amazon/ea/purchase/client/request/UnBuyRequest;
.super Ljava/lang/Object;
.source "UnBuyRequest.java"


# instance fields
.field private final request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    invoke-direct {v0, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    const-string/jumbo v1, "method"

    const-string/jumbo v2, "unBuy"

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string v1, "EndActions"

    const-string/jumbo v2, "site"

    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string/jumbo v2, "userCode"

    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    .line 29
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAssociateTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addOptParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    .line 30
    invoke-virtual {v0}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addAccessTokenCookie()Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    .line 31
    invoke-virtual {v0}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addXACBCookie()Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    iput-object v0, p0, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-void
.end method


# virtual methods
.method public execute()Lcom/amazon/ea/purchase/client/response/UnBuyResponse;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->execute()Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/purchase/client/response/UnBuyResponse;->parse(Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;)Lcom/amazon/ea/purchase/client/response/UnBuyResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAsin(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/UnBuyRequest;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string v1, "asin"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method

.method public setOrderId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/UnBuyRequest;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string/jumbo v1, "orderId"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string/jumbo p1, "orderItemID"

    invoke-virtual {v0, p1, p2}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method

.method public setRefTag(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/UnBuyRequest;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string/jumbo v1, "ref_"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addOptParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/UnBuyRequest;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addSessionCookie(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method

.method public setTokens(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/UnBuyRequest;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/UnBuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addTokens(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method
