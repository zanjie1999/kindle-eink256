.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractSSEHandler;
.source "XmlResponsesSaxParser.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3VersionResult;
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompleteMultipartUploadHandler"
.end annotation


# instance fields
.field private ase:Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

.field private errorCode:Ljava/lang/String;

.field private hostId:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1726
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractSSEHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1832
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->atTopLevel()Z

    move-result p1

    const-string p3, "Error"

    if-eqz p1, :cond_0

    .line 1833
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1834
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->ase:Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    if-eqz p1, :cond_8

    .line 1835
    iget-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 1836
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->ase:Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    iget-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setRequestId(Ljava/lang/String;)V

    .line 1837
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->ase:Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    iget-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->hostId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "CompleteMultipartUploadResult"

    .line 1842
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Location"

    .line 1843
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1844
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "Bucket"

    .line 1845
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1846
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setBucketName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "Key"

    .line 1847
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1848
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "ETag"

    .line 1849
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1850
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setETag(Ljava/lang/String;)V

    goto :goto_0

    .line 1854
    :cond_4
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "Code"

    .line 1855
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1856
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->errorCode:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string p1, "Message"

    .line 1857
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1858
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->ase:Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    goto :goto_0

    :cond_6
    const-string p1, "RequestId"

    .line 1859
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1860
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->requestId:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string p1, "HostId"

    .line 1861
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1862
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->hostId:Ljava/lang/String;

    :cond_8
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1823
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/AbstractHandler;->atTopLevel()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CompleteMultipartUploadResult"

    .line 1824
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1825
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    invoke-direct {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    :cond_0
    return-void
.end method

.method public getAmazonS3Exception()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;
    .locals 1

    .line 1813
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->ase:Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    return-object v0
.end method

.method public getCompleteMultipartUploadResult()Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 1

    .line 1809
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    return-object v0
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 1

    .line 1755
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-eqz v0, :cond_0

    .line 1756
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setExpirationTime(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 1

    .line 1773
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-eqz v0, :cond_0

    .line 1774
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 1

    .line 1803
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-eqz v0, :cond_0

    .line 1804
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setRequesterCharged(Z)V

    :cond_0
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    if-eqz v0, :cond_0

    .line 1781
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setVersionId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected sseResult()Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;
    .locals 1

    .line 1739
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->result:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    return-object v0
.end method
