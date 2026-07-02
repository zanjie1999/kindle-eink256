.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;
.super Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
.source "AmazonS3Exception.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x691b1e2e775ee86dL


# instance fields
.field private additionalDetails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cloudFrontId:Ljava/lang/String;

.field private final errorResponseXml:Ljava/lang/String;

.field private extendedRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->errorResponseXml:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdditionalDetails()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->additionalDetails:Ljava/util/Map;

    return-object v0
.end method

.method public getExtendedRequestId()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->extendedRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalDetails(Ljava/util/Map;)V
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

    .line 153
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->additionalDetails:Ljava/util/Map;

    return-void
.end method

.method public setCloudFrontId(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->cloudFrontId:Ljava/lang/String;

    return-void
.end method

.method public setExtendedRequestId(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->extendedRequestId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", S3 Extended Request ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->getExtendedRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
