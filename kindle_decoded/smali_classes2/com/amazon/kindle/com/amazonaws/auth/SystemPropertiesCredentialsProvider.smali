.class public Lcom/amazon/kindle/com/amazonaws/auth/SystemPropertiesCredentialsProvider;
.super Ljava/lang/Object;
.source "SystemPropertiesCredentialsProvider.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;
    .locals 3

    const-string v0, "aws.accessKeyId"

    .line 33
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "aws.secretKey"

    .line 34
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 35
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/auth/BasicAWSCredentials;

    .line 36
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/BasicAWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 40
    :cond_0
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v1, "Unable to load AWS credentials from Java system properties (aws.accessKeyId and aws.secretKey)"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 52
    const-class v0, Lcom/amazon/kindle/com/amazonaws/auth/SystemPropertiesCredentialsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
