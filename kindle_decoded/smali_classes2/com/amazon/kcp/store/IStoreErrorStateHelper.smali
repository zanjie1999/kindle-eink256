.class public interface abstract Lcom/amazon/kcp/store/IStoreErrorStateHelper;
.super Ljava/lang/Object;
.source "IStoreErrorStateHelper.java"


# virtual methods
.method public abstract onReceivedError(Lcom/amazon/kcp/store/StoreError;)V
.end method

.method public abstract resetErrorState(Ljava/util/EnumSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kcp/store/StoreError;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract retryInErrorState()V
.end method
