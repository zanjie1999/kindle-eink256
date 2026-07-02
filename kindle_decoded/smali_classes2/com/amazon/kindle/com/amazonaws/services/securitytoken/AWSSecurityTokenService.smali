.class public interface abstract Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenService;
.super Ljava/lang/Object;
.source "AWSSecurityTokenService.java"


# virtual methods
.method public abstract assumeRoleWithWebIdentity(Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method
