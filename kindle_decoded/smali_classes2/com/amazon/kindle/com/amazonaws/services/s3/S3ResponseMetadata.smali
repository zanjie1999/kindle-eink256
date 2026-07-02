.class public Lcom/amazon/kindle/com/amazonaws/services/s3/S3ResponseMetadata;
.super Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;
.source "S3ResponseMetadata.java"


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    return-void
.end method
