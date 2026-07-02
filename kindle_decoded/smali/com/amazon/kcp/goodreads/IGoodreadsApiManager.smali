.class public interface abstract Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;
.super Ljava/lang/Object;
.source "IGoodreadsApiManager.kt"


# virtual methods
.method public abstract fetchRemoteShelf(Ljava/lang/String;)V
.end method

.method public abstract isGoodreadsLinked()Z
.end method

.method public abstract registerCallback(Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;)V
.end method

.method public abstract updateRemoteShelf(Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;Ljava/lang/String;)V
.end method
