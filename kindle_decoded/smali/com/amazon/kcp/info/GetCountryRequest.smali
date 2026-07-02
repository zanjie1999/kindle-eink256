.class public Lcom/amazon/kcp/info/GetCountryRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "GetCountryRequest.java"


# static fields
.field private static final COUNTRY_KEY:Ljava/lang/String; = "country"


# instance fields
.field private country:Ljava/lang/String;

.field private countryCallback:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/callback/ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getCountryURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/amazon/kindle/webservices/JSONResponseHandler;

    new-instance v1, Lcom/amazon/kcp/info/GetCountryRequest$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/info/GetCountryRequest$1;-><init>(Lcom/amazon/kcp/info/GetCountryRequest;)V

    invoke-direct {v0, v1}, Lcom/amazon/kindle/webservices/JSONResponseHandler;-><init>(Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/info/GetCountryRequest;->countryCallback:Lcom/amazon/kindle/callback/ICallback;

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/info/GetCountryRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/info/GetCountryRequest;->country:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 2

    .line 41
    new-instance v0, Lcom/amazon/kindle/callback/OperationResult;

    iget-object v1, p0, Lcom/amazon/kcp/info/GetCountryRequest;->country:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    .line 42
    iget-object v1, p0, Lcom/amazon/kcp/info/GetCountryRequest;->country:Ljava/lang/String;

    if-nez v1, :cond_0

    const/16 v1, 0x28

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/callback/OperationResult;->setStatus(I)Lcom/amazon/kindle/callback/OperationResult;

    .line 43
    iget-object v1, p0, Lcom/amazon/kcp/info/GetCountryRequest;->countryCallback:Lcom/amazon/kindle/callback/ICallback;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    .line 44
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    return v0
.end method
