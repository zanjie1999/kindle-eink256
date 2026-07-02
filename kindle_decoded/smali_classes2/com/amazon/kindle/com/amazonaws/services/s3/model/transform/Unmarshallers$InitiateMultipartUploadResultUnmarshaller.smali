.class public final Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;
.super Ljava/lang/Object;
.source "Unmarshallers.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unmarshall(Ljava/io/InputStream;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 289
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseInitiateMultipartUploadResponse(Ljava/io/InputStream;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->getInitiateMultipartUploadResult()Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;->unmarshall(Ljava/io/InputStream;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method
