.class public Lcom/amazon/android/docviewer/bookmarks/BookmarkComparator;
.super Ljava/lang/Object;
.source "BookmarkComparator.java"


# direct methods
.method public static compare(Lcom/amazon/android/docviewer/bookmarks/IBookmark;Lcom/amazon/android/docviewer/bookmarks/IBookmark;)I
    .locals 3

    .line 13
    invoke-interface {p0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getBookAsin()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-interface {p1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getBookAsin()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v0

    .line 20
    :cond_1
    invoke-interface {p0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getBookGuid()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-interface {p1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getBookGuid()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    return v0

    .line 27
    :cond_3
    invoke-interface {p0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getIndex()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getIndex()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    return v0

    .line 30
    :cond_4
    invoke-interface {p0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getPosition()I

    move-result p0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getPosition()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method
