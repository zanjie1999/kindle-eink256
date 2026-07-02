.class public Lcom/amazon/kindle/com/amazonaws/auth/AnonymousAWSCredentials;
.super Ljava/lang/Object;
.source "AnonymousAWSCredentials.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAWSAccessKeyId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAWSSecretKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
