.class abstract Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractSSEHandler;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;
.source "AbstractSSEHandler.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final setSSEAlgorithm(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSEAlgorithm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setSSECustomerAlgorithm(Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setSSECustomerKeyMd5(Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract sseResult()Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;
.end method
