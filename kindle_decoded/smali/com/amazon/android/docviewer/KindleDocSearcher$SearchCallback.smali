.class public interface abstract Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;
.super Ljava/lang/Object;
.source "KindleDocSearcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/KindleDocSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchCallback"
.end annotation


# virtual methods
.method public abstract onCanceled()V
.end method

.method public abstract onComplete()V
.end method

.method public abstract onResult(Lcom/amazon/android/docviewer/BookSearchResult;)V
.end method

.method public abstract onResultCount(I)V
.end method

.method public abstract onStart(Z)V
.end method
