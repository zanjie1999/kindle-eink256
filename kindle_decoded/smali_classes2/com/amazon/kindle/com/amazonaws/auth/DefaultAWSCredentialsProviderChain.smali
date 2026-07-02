.class public Lcom/amazon/kindle/com/amazonaws/auth/DefaultAWSCredentialsProviderChain;
.super Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;
.source "DefaultAWSCredentialsProviderChain.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;

    .line 35
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/auth/SystemPropertiesCredentialsProvider;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/auth/SystemPropertiesCredentialsProvider;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;-><init>([Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method
