.class public interface abstract Lcom/amazon/kindle/krx/update/IContentUpdateManager;
.super Ljava/lang/Object;
.source "IContentUpdateManager.java"


# virtual methods
.method public abstract getContentUpdateHandlers()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/update/IContentUpdateHandler;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerContentUpdateHandler(Lcom/amazon/kindle/krx/update/IContentUpdateHandler;)V
.end method

.method public abstract unregisterContentUpdateHandler(Lcom/amazon/kindle/krx/update/IContentUpdateHandler;)V
.end method
