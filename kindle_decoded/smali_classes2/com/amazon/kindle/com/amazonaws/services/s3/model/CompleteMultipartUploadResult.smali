.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;
.source "CompleteMultipartUploadResult.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private expirationTime:Ljava/util/Date;

.field private expirationTimeRuleId:Ljava/lang/String;

.field private isRequesterCharged:Z

.field private key:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->expirationTime:Ljava/util/Date;

    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->expirationTimeRuleId:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->key:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->location:Ljava/lang/String;

    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->isRequesterCharged:Z

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;->versionId:Ljava/lang/String;

    return-void
.end method
