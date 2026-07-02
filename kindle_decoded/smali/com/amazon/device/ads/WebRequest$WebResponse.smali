.class public Lcom/amazon/device/ads/WebRequest$WebResponse;
.super Ljava/lang/Object;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/WebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebResponse"
.end annotation


# instance fields
.field private httpStatus:Ljava/lang/String;

.field private httpStatusCode:I

.field private inputStream:Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;

.field final synthetic this$0:Lcom/amazon/device/ads/WebRequest;


# direct methods
.method protected constructor <init>(Lcom/amazon/device/ads/WebRequest;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest$WebResponse;->this$0:Lcom/amazon/device/ads/WebRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpStatus()Ljava/lang/String;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$WebResponse;->httpStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .line 885
    iget v0, p0, Lcom/amazon/device/ads/WebRequest$WebResponse;->httpStatusCode:I

    return v0
.end method

.method public getResponseReader()Lcom/amazon/device/ads/ResponseReader;
    .locals 2

    .line 872
    new-instance v0, Lcom/amazon/device/ads/ResponseReader;

    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest$WebResponse;->inputStream:Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/ResponseReader;-><init>(Ljava/io/InputStream;)V

    .line 873
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest$WebResponse;->this$0:Lcom/amazon/device/ads/WebRequest;

    iget-boolean v1, v1, Lcom/amazon/device/ads/WebRequest;->logResponseEnabled:Z

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ResponseReader;->enableLog(Z)V

    .line 874
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest$WebResponse;->this$0:Lcom/amazon/device/ads/WebRequest;

    invoke-static {v1}, Lcom/amazon/device/ads/WebRequest;->access$000(Lcom/amazon/device/ads/WebRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ResponseReader;->setExternalLogTag(Ljava/lang/String;)V

    return-object v0
.end method

.method public isHttpStatusCodeOK()Z
    .locals 2

    .line 899
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setHttpStatus(Ljava/lang/String;)V
    .locals 0

    .line 919
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest$WebResponse;->httpStatus:Ljava/lang/String;

    return-void
.end method

.method protected setHttpStatusCode(I)V
    .locals 0

    .line 894
    iput p1, p0, Lcom/amazon/device/ads/WebRequest$WebResponse;->httpStatusCode:I

    return-void
.end method

.method protected setInputStream(Ljava/io/InputStream;)V
    .locals 2

    .line 864
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;

    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest$WebResponse;->this$0:Lcom/amazon/device/ads/WebRequest;

    invoke-direct {v0, v1, p1}, Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;-><init>(Lcom/amazon/device/ads/WebRequest;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest$WebResponse;->inputStream:Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;

    return-void
.end method
