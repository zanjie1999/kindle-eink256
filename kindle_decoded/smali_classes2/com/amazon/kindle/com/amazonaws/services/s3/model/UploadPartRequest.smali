.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "UploadPartRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bucketName:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private fileOffset:J

.field private id:I

.field private transient inputStream:Ljava/io/InputStream;

.field private isLastPart:Z

.field private isRequesterPays:Z

.field private key:Ljava/lang/String;

.field private mainUploadId:I

.field private md5Digest:Ljava/lang/String;

.field private objectMetadata:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

.field private partNumber:I

.field private partSize:J

.field private sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileOffset()J
    .locals 2

    .line 484
    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->fileOffset:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->id:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5Digest()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->objectMetadata:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 322
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->partNumber:I

    return v0
.end method

.method public getPartSize()J
    .locals 2

    .line 362
    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->partSize:J

    return-wide v0
.end method

.method public getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 672
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->isRequesterPays:Z

    return v0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->file:Ljava/io/File;

    return-void
.end method

.method public setFileOffset(J)V
    .locals 0

    .line 497
    iput-wide p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->fileOffset:J

    return-void
.end method

.method public setLastPart(Z)V
    .locals 0

    .line 585
    iput-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->isLastPart:Z

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public withFile(Ljava/io/File;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 470
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->setFile(Ljava/io/File;)V

    return-object p0
.end method

.method public withFileOffset(J)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 513
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->setFileOffset(J)V

    return-object p0
.end method

.method public withId(I)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 146
    iput p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->id:I

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->key:Ljava/lang/String;

    return-object p0
.end method

.method public withLastPart(Z)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->setLastPart(Z)V

    return-object p0
.end method

.method public withMainUploadId(I)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 169
    iput p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->mainUploadId:I

    return-object p0
.end method

.method public withPartNumber(I)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 352
    iput p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->partNumber:I

    return-object p0
.end method

.method public withPartSize(J)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 383
    iput-wide p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->partSize:J

    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-object p0
.end method
