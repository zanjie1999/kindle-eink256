.class public interface abstract Lcom/amazon/nwstd/docviewer/INewsstandNavigator;
.super Ljava/lang/Object;
.source "INewsstandNavigator.java"


# virtual methods
.method public abstract getActivePageIndexes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract navigateToBookmark(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V
.end method
