.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "GetObjectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private generalProgressListener:Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

.field private isRequesterPays:Z

.field private matchingETagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modifiedSinceConstraint:Ljava/util/Date;

.field private nonmatchingEtagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private partNumber:Ljava/lang/Integer;

.field private range:[J

.field private responseHeaders:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;

.field private s3ObjectIdBuilder:Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;

.field private sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

.field private unmodifiedSinceConstraint:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 60
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 150
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->setKey(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->setVersionId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;->getBucket()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralProgressListener()Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->generalProgressListener:Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingETagConstraints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getNonmatchingETagConstraints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getRange()[J
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->range:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_0
    return-object v0
.end method

.method public getResponseHeaders()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->responseHeaders:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;->getVersionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 888
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;->setBucket(Ljava/lang/String;)V

    return-void
.end method

.method public setGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->generalProgressListener:Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public setRange(JJ)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    .line 413
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->range:[J

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;->setVersionId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic withGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->withGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;

    return-object p0
.end method

.method public withGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 867
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;->setGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)V

    return-object p0
.end method
