.class public interface abstract Lcom/amazon/kcp/search/IBookSearchIndexer;
.super Ljava/lang/Object;
.source "IBookSearchIndexer.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract cleanup()V
.end method

.method public abstract close()V
.end method

.method public abstract getFarthestIndexedPostion()J
.end method

.method public abstract index(Lcom/amazon/kindle/services/download/IStatusTracker;)Z
.end method

.method public abstract initialize()Z
.end method

.method public abstract isBookIndexable()Z
.end method

.method public abstract isIndexAvailable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
.end method

.method public abstract search(Lcom/amazon/kindle/search/KindleSearchItem;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/search/IKindleWordTokenIterator;Ljava/lang/String;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
