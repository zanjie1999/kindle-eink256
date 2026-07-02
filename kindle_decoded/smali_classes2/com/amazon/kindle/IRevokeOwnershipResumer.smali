.class public interface abstract Lcom/amazon/kindle/IRevokeOwnershipResumer;
.super Ljava/lang/Object;
.source "IRevokeOwnershipResumer.java"


# virtual methods
.method public abstract deleteRevokeRequest(Ljava/lang/String;)V
.end method

.method public abstract persistRevokeRequest(Lcom/amazon/kindle/revoke/IRevokeTracker;)V
.end method

.method public abstract resumeRevokeRequests()V
.end method

.method public abstract resumeRevokeRequests(Lcom/amazon/kindle/revoke/RevokeFailureType;)V
.end method
