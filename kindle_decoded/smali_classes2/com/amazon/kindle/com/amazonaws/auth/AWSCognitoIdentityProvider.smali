.class public interface abstract Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;
.super Ljava/lang/Object;
.source "AWSCognitoIdentityProvider.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/AWSIdentityProvider;


# virtual methods
.method public abstract getIdentityId()Ljava/lang/String;
.end method

.method public abstract getIdentityPoolId()Ljava/lang/String;
.end method

.method public abstract getLogins()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract identityChanged(Ljava/lang/String;)V
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract registerIdentityChangedListener(Lcom/amazon/kindle/com/amazonaws/auth/IdentityChangedListener;)V
.end method
