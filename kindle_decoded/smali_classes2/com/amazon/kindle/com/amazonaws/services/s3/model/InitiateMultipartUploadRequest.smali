.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "InitiateMultipartUploadRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private accessControlList:Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;

.field private bucketName:Ljava/lang/String;

.field private cannedACL:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

.field private isRequesterPays:Z

.field private key:Ljava/lang/String;

.field public objectMetadata:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

.field private redirectLocation:Ljava/lang/String;

.field private sseAwsKeyManagementParams:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

.field private sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

.field private storageClass:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessControlList()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->accessControlList:Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedACL()Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->cannedACL:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSSEAwsKeyManagementParams()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->sseAwsKeyManagementParams:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-object v0
.end method

.method public getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getStorageClass()Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->storageClass:Lcom/amazon/kindle/com/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->isRequesterPays:Z

    return v0
.end method

.method public setObjectMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public setSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 463
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    if-nez v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 467
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->sseAwsKeyManagementParams:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-void
.end method

.method public withCannedACL(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->cannedACL:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    return-object p0
.end method

.method public withObjectMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 381
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setObjectMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p0
.end method

.method public withSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 478
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    return-object p0
.end method
