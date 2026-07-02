.class public interface abstract Lcom/amazon/android/docviewer/bookmarks/IBookmark;
.super Ljava/lang/Object;
.source "IBookmark.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getArticleTitle()Ljava/lang/String;
.end method

.method public abstract getBookAsin()Ljava/lang/String;
.end method

.method public abstract getBookGuid()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIndex()I
.end method

.method public abstract getPosition()I
.end method

.method public abstract getThumbnail()Landroid/graphics/Bitmap;
.end method

.method public abstract isBookmarked()Z
.end method
