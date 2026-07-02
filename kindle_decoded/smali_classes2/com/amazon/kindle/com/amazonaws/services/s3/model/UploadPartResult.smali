.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;
.source "UploadPartResult.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3RequesterChargedResult;


# instance fields
.field private eTag:Ljava/lang/String;

.field private isRequesterCharged:Z

.field private partNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;->partNumber:I

    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;->isRequesterCharged:Z

    return-void
.end method
