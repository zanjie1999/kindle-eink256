.class public interface abstract Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;
.super Ljava/lang/Object;
.source "AmazonCognitoIdentity.java"


# virtual methods
.method public abstract getCredentialsForIdentity(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getId(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetIdResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getOpenIdToken(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/com/amazonaws/AmazonClientException;,
            Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
        }
    .end annotation
.end method
