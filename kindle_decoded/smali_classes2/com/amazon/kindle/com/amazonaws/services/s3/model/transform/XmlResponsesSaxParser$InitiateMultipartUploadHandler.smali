.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitiateMultipartUploadHandler"
.end annotation


# instance fields
.field private final result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1876
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 1878
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "InitiateMultipartUploadResult"

    .line 1896
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Bucket"

    .line 1897
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1898
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;->setBucketName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Key"

    .line 1900
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1901
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;->setKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "UploadId"

    .line 1903
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1904
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;->setUploadId(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    return-void
.end method

.method public getInitiateMultipartUploadResult()Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 1

    .line 1882
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    return-object v0
.end method
