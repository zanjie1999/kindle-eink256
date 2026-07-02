.class public final Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;
.super Ljava/lang/Object;
.source "S3ObjectIdBuilder.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucket:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;->bucket:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;->key:Ljava/lang/String;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectIdBuilder;->versionId:Ljava/lang/String;

    return-void
.end method
