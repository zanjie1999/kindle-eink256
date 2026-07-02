.class public interface abstract Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarSubscriber;
.super Ljava/lang/Object;
.source "IGoodreadsMarManager.kt"


# virtual methods
.method public abstract onIncompatibleReadStateSelected(Ljava/util/List;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onItemsFailedToMove(Ljava/util/List;Ljava/lang/String;)V
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

.method public abstract onItemsReadyToMove(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;",
            ")V"
        }
    .end annotation
.end method
