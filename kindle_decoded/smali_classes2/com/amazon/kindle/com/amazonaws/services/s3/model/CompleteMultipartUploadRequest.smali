.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "CompleteMultipartUploadRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private isRequesterPays:Z

.field private key:Ljava/lang/String;

.field private partETags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPartETags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->isRequesterPays:Z

    return v0
.end method
