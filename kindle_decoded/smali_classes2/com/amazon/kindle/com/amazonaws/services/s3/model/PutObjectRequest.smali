.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
.source "PutObjectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isRequesterPays:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->clone()Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->clone()Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;
    .locals 1

    .line 174
    invoke-super {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->clone()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    .line 175
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->copyPutObjectBaseTo(Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->clone()Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->isRequesterPays:Z

    return v0
.end method

.method public setRequesterPays(Z)V
    .locals 0

    .line 311
    iput-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->isRequesterPays:Z

    return-void
.end method

.method public bridge synthetic withAccessControlList(Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->withAccessControlList(Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withAccessControlList(Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 225
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withAccessControlList(Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-object p1, p0

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withCannedAcl(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->withCannedAcl(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withCannedAcl(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 218
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withCannedAcl(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-object p1, p0

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->withGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 271
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->withGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withInputStream(Ljava/io/InputStream;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->withInputStream(Ljava/io/InputStream;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withInputStream(Ljava/io/InputStream;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 231
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withInputStream(Ljava/io/InputStream;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-object p1, p0

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->withMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 212
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-object p1, p0

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withRedirectLocation(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->withRedirectLocation(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withRedirectLocation(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 237
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withRedirectLocation(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-object p1, p0

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->withSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 264
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-object p1, p0

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withSSECustomerKey(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->withSSECustomerKey(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withSSECustomerKey(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 243
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withSSECustomerKey(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-object p1, p0

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public bridge synthetic withStorageClass(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;->withStorageClass(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 194
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withStorageClass(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-object p1, p0

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method
