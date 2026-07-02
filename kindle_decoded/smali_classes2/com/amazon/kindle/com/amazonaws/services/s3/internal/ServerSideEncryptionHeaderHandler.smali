.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;
.super Ljava/lang/Object;
.source "ServerSideEncryptionHeaderHandler.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/HeaderHandler<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "x-amz-server-side-encryption"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "x-amz-server-side-encryption-customer-algorithm"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p2

    const-string/jumbo v0, "x-amz-server-side-encryption-customer-key-MD5"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;->handle(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V

    return-void
.end method
