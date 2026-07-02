.class public Lcom/amazon/kindle/webservices/BaseResponseHandler;
.super Ljava/lang/Object;
.source "BaseResponseHandler.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IResponseHandler;


# instance fields
.field protected httpStatusCode:I

.field protected responseProperties:Lcom/amazon/kindle/webservices/HttpResponseProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/amazon/kindle/webservices/BaseResponseHandler;->httpStatusCode:I

    return-void
.end method


# virtual methods
.method public getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseResponseHandler;->responseProperties:Lcom/amazon/kindle/webservices/HttpResponseProperties;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/kindle/webservices/BaseResponseHandler;->httpStatusCode:I

    return v0
.end method

.method public onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseResponseHandler;->responseProperties:Lcom/amazon/kindle/webservices/HttpResponseProperties;

    return-void
.end method

.method public onHttpStatusCodeReceived(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/amazon/kindle/webservices/BaseResponseHandler;->httpStatusCode:I

    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    return-void
.end method

.method public onRequestCanceled()V
    .locals 0

    return-void
.end method
