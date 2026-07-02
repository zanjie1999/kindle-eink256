.class public interface abstract Lcom/amazon/kindle/services/authentication/AccountHolder;
.super Ljava/lang/Object;
.source "AccountHolders.kt"


# virtual methods
.method public abstract clearAuthorizedUser()V
.end method

.method public abstract getAccountId()Ljava/lang/String;
.end method

.method public abstract getAllUsers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/authentication/IAccountInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthorizedUserId()Ljava/lang/String;
.end method

.method public abstract getCurrentUser()Lcom/amazon/kindle/services/authentication/IAccountInfo;
.end method

.method public abstract isAuthenticated()Z
.end method
