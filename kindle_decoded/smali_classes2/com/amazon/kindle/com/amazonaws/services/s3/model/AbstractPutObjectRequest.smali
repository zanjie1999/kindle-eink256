.class public abstract Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "AbstractPutObjectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private accessControlList:Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;

.field private bucketName:Ljava/lang/String;

.field private cannedAcl:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

.field private file:Ljava/io/File;

.field private transient inputStream:Ljava/io/InputStream;

.field private key:Ljava/lang/String;

.field private metadata:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

.field private redirectLocation:Ljava/lang/String;

.field private sseAwsKeyManagementParams:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

.field private sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

.field private storageClass:Ljava/lang/String;

.field private tagging:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->bucketName:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->key:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->clone()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 1

    .line 809
    invoke-super {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->clone()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->clone()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final copyPutObjectBaseTo(Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 814
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->copyBaseTo(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    .line 815
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 816
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getAccessControlList()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withAccessControlList(Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 817
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getCannedAcl()Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withCannedAcl(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 818
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withInputStream(Ljava/io/InputStream;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 819
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;->clone()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 820
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withRedirectLocation(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 821
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withStorageClass(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 822
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    .line 823
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->withSSECustomerKey(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAccessControlList()Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->accessControlList:Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedAcl()Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->cannedAcl:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->metadata:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSSEAwsKeyManagementParams()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->sseAwsKeyManagementParams:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-object v0
.end method

.method public getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getTagging()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->tagging:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;

    return-object v0
.end method

.method public setAccessControlList(Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->accessControlList:Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;

    return-void
.end method

.method public setCannedAcl(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->cannedAcl:Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->metadata:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->redirectLocation:Ljava/lang/String;

    return-void
.end method

.method public setSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 786
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    if-nez v0, :cond_0

    goto :goto_0

    .line 787
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 790
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->sseAwsKeyManagementParams:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-void
.end method

.method public setSSECustomerKey(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 679
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->sseAwsKeyManagementParams:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    if-nez v0, :cond_0

    goto :goto_0

    .line 680
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 683
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public setTagging(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->tagging:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectTagging;

    return-void
.end method

.method public withAccessControlList(Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;",
            ")TT;"
        }
    .end annotation

    .line 566
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setAccessControlList(Lcom/amazon/kindle/com/amazonaws/services/s3/model/AccessControlList;)V

    return-object p0
.end method

.method public withCannedAcl(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;",
            ")TT;"
        }
    .end annotation

    .line 533
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setCannedAcl(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object p0
.end method

.method public withInputStream(Ljava/io/InputStream;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 629
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public withMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;",
            ")TT;"
        }
    .end annotation

    .line 487
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setMetadata(Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p0
.end method

.method public withRedirectLocation(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 660
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->redirectLocation:Ljava/lang/String;

    return-object p0
.end method

.method public withSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;",
            ")TT;"
        }
    .end annotation

    .line 801
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setSSEAwsKeyManagementParams(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    return-object p0
.end method

.method public withSSECustomerKey(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;",
            ")TT;"
        }
    .end annotation

    .line 698
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setSSECustomerKey(Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AbstractPutObjectRequest;->setStorageClass(Ljava/lang/String;)V

    return-object p0
.end method
