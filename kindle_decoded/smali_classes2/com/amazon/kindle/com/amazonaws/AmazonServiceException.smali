.class public Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
.super Lcom/amazon/kindle/com/amazonaws/AmazonClientException;
.source "AmazonServiceException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorType:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

.field private requestId:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 109
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Unknown:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->errorType:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    .line 110
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Unknown:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->errorType:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    .line 123
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->errorType:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Status Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; Error Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Request ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->statusCode:I

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorType(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->errorType:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->statusCode:I

    return-void
.end method
