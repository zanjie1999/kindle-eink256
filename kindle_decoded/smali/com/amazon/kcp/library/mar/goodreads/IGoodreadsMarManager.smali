.class public interface abstract Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;
.super Ljava/lang/Object;
.source "IGoodreadsMarManager.kt"


# virtual methods
.method public abstract initialize()V
.end method

.method public abstract moveToShelf(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onReadStateChanged(Ljava/util/List;Lcom/amazon/kindle/krx/content/IBook$ReadState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook$ReadState;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerSubscriber(Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarSubscriber;)V
.end method
