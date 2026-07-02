.class public Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "GetCustomerEmailWebRequest.java"


# static fields
.field private static final ATTRIB_EMAIL:Ljava/lang/String; = "email"

.field private static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field private static final BEARER_TOKEN_HEADER:Ljava/lang/String; = "Bearer "

.field private static final PARAM_PANDA_ATTRIBUTES:Ljava/lang/String; = "attributes"


# instance fields
.field private customerEmail:Ljava/lang/String;

.field private emailCallback:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parsedData:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/callback/ICallback;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;->parsedData:Z

    .line 43
    iput-object p1, p0, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;->emailCallback:Lcom/amazon/kindle/callback/ICallback;

    .line 45
    new-instance p1, Lcom/amazon/kindle/webservices/JSONResponseHandler;

    new-instance v0, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest$1;-><init>(Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;)V

    invoke-direct {p1, v0}, Lcom/amazon/kindle/webservices/JSONResponseHandler;-><init>(Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 53
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getCustomerEmailServiceURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object p1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const-string p2, "attributes"

    const-string v0, "email"

    .line 55
    invoke-static {p1, p2, v0}, Lcom/amazon/kindle/webservices/UrlUtils;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;Lorg/json/JSONObject;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;->handleCustomerEmailJSON(Lorg/json/JSONObject;)V

    return-void
.end method

.method private handleCustomerEmailJSON(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "email"

    .line 83
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;->customerEmail:Ljava/lang/String;

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;->parsedData:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;->customerEmail:Ljava/lang/String;

    .line 87
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 2

    .line 61
    new-instance v0, Lcom/amazon/kindle/callback/OperationResult;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;->customerEmail:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    .line 63
    iget-boolean v1, p0, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;->parsedData:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/callback/OperationResult;->setStatus(I)Lcom/amazon/kindle/callback/OperationResult;

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    .line 66
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/callback/OperationResult;->setStatus(I)Lcom/amazon/kindle/callback/OperationResult;

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;->emailCallback:Lcom/amazon/kindle/callback/ICallback;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    .line 70
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    return v0
.end method
