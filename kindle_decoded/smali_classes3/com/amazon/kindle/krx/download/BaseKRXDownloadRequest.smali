.class public Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;
.super Ljava/lang/Object;
.source "BaseKRXDownloadRequest.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IExtendedKRXDownloadRequest;


# instance fields
.field private errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field private timeoutMills:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v0, 0x3a98

    .line 20
    iput v0, p0, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;->timeoutMills:I

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBody()[B
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getRetries()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;->timeoutMills:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;->timeoutMills:I

    return-void
.end method
