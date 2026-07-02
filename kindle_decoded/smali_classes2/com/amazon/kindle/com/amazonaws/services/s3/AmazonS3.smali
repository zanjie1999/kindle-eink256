.class public interface abstract Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;
.super Ljava/lang/Object;
.source "AmazonS3.java"


# virtual methods
.method public abstract completeMultipartUpload(Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getObject(Lcom/amazon/kindle/com/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract initiateMultipartUpload(Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract putObject(Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract uploadPart(Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method
