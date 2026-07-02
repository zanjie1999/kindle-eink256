.class public interface abstract Lcom/amazon/android/docviewer/mobi/IPageProvider;
.super Ljava/lang/Object;
.source "IPageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/android/docviewer/IDocumentPage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/IDocumentPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;",
            ")TT;"
        }
    .end annotation
.end method
