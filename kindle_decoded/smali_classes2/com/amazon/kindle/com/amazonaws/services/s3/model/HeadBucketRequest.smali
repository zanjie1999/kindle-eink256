.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/HeadBucketRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "HeadBucketRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/HeadBucketRequest;->bucketName:Ljava/lang/String;

    return-void
.end method
