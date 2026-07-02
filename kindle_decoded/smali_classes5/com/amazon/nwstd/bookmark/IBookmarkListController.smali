.class public interface abstract Lcom/amazon/nwstd/bookmark/IBookmarkListController;
.super Ljava/lang/Object;
.source "IBookmarkListController.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getBookmarkListClosedEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getBookmarkListOpenedEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract hide(Z)Z
.end method

.method public abstract initialize(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;Lcom/amazon/nwstd/docviewer/INewsstandNavigator;Lcom/amazon/nwstd/docviewer/IContentInformationProvider;Lcom/amazon/foundation/IIntEventProvider;)V
.end method

.method public abstract isBookmarkListOpened()Z
.end method

.method public abstract setBookmarkableListVisible(Z)V
.end method

.method public abstract show(Z)Z
.end method
