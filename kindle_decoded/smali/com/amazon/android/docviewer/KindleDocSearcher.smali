.class public interface abstract Lcom/amazon/android/docviewer/KindleDocSearcher;
.super Ljava/lang/Object;
.source "KindleDocSearcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;
    }
.end annotation


# virtual methods
.method public abstract clearCachedSearchResults()V
.end method

.method public abstract getCachedSearchResults(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract search(Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)Ljava/lang/Runnable;
.end method

.method public abstract setCachedSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
