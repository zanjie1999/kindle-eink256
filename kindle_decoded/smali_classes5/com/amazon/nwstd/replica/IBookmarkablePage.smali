.class public interface abstract Lcom/amazon/nwstd/replica/IBookmarkablePage;
.super Ljava/lang/Object;
.source "IBookmarkablePage.java"


# virtual methods
.method public abstract addLeftBookmark(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)V
.end method

.method public abstract addLeftBookmarkHint(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)V
.end method

.method public abstract addRightBookmark(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)V
.end method

.method public abstract addRightBookmarkHint(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)V
.end method

.method public abstract getBookmarkableView()Lcom/amazon/android/docviewer/mobi/ReplicaView;
.end method

.method public abstract performToggleBookmark(FF)Z
.end method

.method public abstract resetBookmark()V
.end method

.method public abstract updateBookmarkHintVisibility()V
.end method
