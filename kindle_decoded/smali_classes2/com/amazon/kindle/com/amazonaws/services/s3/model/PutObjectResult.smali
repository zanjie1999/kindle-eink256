.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;
.source "PutObjectResult.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3VersionResult;


# instance fields
.field private contentMd5:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private expirationTime:Ljava/util/Date;

.field private expirationTimeRuleId:Ljava/lang/String;

.field private isRequesterCharged:Z

.field private metadata:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;->expirationTime:Ljava/util/Date;

    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;->expirationTimeRuleId:Ljava/lang/String;

    return-void
.end method

.method public setMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;->metadata:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;->isRequesterCharged:Z

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;->versionId:Ljava/lang/String;

    return-void
.end method
