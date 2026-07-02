.class public Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
.super Ljava/lang/Object;
.source "ExecutionResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mErrorMessage:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRawResponse:[B

.field private mResponse:Ljava/lang/Object;

.field private mResponseCode:I

.field private mSucceeded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mSucceeded:Z

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "*>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mSucceeded:Z

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mHeaders:Ljava/util/Map;

    .line 25
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->isSucceeded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setSucceeded(Z)V

    .line 26
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setResponseCode(I)V

    .line 27
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setHeaders(Ljava/util/Map;)V

    .line 28
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRawResponse()[B
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mRawResponse:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResponseType;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mResponse:Ljava/lang/Object;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mResponseCode:I

    return v0
.end method

.method public isSucceeded()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mSucceeded:Z

    return v0
.end method

.method setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method setRawResponse([B)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mRawResponse:[B

    return-void
.end method

.method setResponse(Ljava/lang/Object;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mResponse:Ljava/lang/Object;

    return-void
.end method

.method setResponseCode(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mResponseCode:I

    return-void
.end method

.method setSucceeded(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->mSucceeded:Z

    return-void
.end method
