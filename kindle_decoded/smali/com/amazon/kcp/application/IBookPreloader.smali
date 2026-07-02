.class public interface abstract Lcom/amazon/kcp/application/IBookPreloader;
.super Ljava/lang/Object;
.source "IBookPreloader.java"


# virtual methods
.method public abstract preload(Lcom/amazon/kindle/content/ContentMetadata;)V
.end method

.method public abstract preload(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract preloadOnAppStart(Landroid/content/Context;)V
.end method

.method public abstract saveLastReadBook(Ljava/lang/String;)V
.end method
