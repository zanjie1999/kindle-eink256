.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;
.super Ljava/lang/Object;
.source "S3RequesterChargedHeaderHandler.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedResult;",
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
.method public handle(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedResult;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p2

    const-string/jumbo v0, "x-amz-request-charged"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 37
    :goto_0
    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedResult;->setRequesterCharged(Z)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedResult;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;->handle(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedResult;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V

    return-void
.end method
