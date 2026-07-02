.class public interface abstract Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;
.super Ljava/lang/Object;
.source "IToggleBookmark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;
    }
.end annotation


# virtual methods
.method public abstract hasBookmarksForLocationIndex(I)Z
.end method

.method public abstract isPageBookmarked(I)Z
.end method

.method public abstract registerToggleEventCallback(Lcom/amazon/foundation/IIntCallback;)V
.end method

.method public abstract removeBookmarksForLocationIndex(I)Z
.end method

.method public abstract toggleBookmarkForLocationIndex(I)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;
.end method

.method public abstract unregisterToggleEventCallback(Lcom/amazon/foundation/IIntCallback;)V
.end method
