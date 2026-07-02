.class public Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;
.super Ljava/lang/Object;
.source "PrepareBuyRequest.java"


# instance fields
.field private final request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    invoke-direct {v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    const-string/jumbo p1, "method"

    const-string/jumbo v2, "prepareBuy"

    .line 33
    invoke-virtual {v1, p1, v2}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    .line 34
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "deviceType"

    invoke-virtual {v1, v0, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string/jumbo p1, "userCode"

    const-string v0, "EndActions"

    .line 35
    invoke-virtual {v1, p1, v0}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    .line 36
    invoke-virtual {v1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addAccessTokenCookie()Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    .line 37
    invoke-virtual {v1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addXACBCookie()Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    iput-object v1, p0, Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-void
.end method


# virtual methods
.method public execute()Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->execute()Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;->parse(Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;)Lcom/amazon/ea/purchase/client/response/PrepareBuyResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAsins(Ljava/util/List;)Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "asins"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method

.method public setRefTag(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/PrepareBuyRequest;->request:Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    const-string/jumbo v1, "ref_"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addOptParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method
