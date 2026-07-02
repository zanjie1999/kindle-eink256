.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/RequestXmlFactory;
.super Ljava/lang/Object;
.source "RequestXmlFactory.java"


# direct methods
.method public static convertToXmlByteArray(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;",
            ">;)[B"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "CompleteMultipartUpload"

    .line 39
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;

    if-eqz p0, :cond_0

    .line 41
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/RequestXmlFactory$1;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/RequestXmlFactory$1;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;

    const-string v2, "Part"

    .line 53
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "PartNumber"

    .line 54
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;->getPartNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "ETag"

    .line 55
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;

    .line 56
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;

    .line 61
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object p0

    return-object p0
.end method
