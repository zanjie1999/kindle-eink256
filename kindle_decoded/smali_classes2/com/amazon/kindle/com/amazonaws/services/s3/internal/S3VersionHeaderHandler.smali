.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3VersionHeaderHandler;
.super Ljava/lang/Object;
.source "S3VersionHeaderHandler.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3VersionResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/HeaderHandler<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3VersionResult;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p2

    const-string/jumbo v0, "x-amz-version-id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3VersionResult;->setVersionId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3VersionResult;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3VersionHeaderHandler;->handle(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3VersionResult;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V

    return-void
.end method
