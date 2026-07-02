.class public interface abstract Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapper;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getAccounts()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryAccount()Ljava/lang/String;
.end method
