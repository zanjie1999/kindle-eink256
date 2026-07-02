.class public Lcom/amazon/nwstd/bookmark/BookmarkListModel;
.super Ljava/lang/Object;
.source "BookmarkListModel.java"


# instance fields
.field private mBookmarkItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/nwstd/bookmark/BookmarkListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

.field private mBookmarkableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/nwstd/bookmark/BookmarkListItem;",
            ">;"
        }
    .end annotation
.end field

.field protected final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/nwstd/bookmark/BookmarkListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mNewsstandNavigator:Lcom/amazon/nwstd/docviewer/INewsstandNavigator;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;Lcom/amazon/nwstd/docviewer/INewsstandNavigator;Landroid/content/Context;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/amazon/nwstd/bookmark/BookmarkListModel$1;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/bookmark/BookmarkListModel$1;-><init>(Lcom/amazon/nwstd/bookmark/BookmarkListModel;)V

    iput-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mComparator:Ljava/util/Comparator;

    .line 79
    iput-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    .line 80
    iput-object p3, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mNewsstandNavigator:Lcom/amazon/nwstd/docviewer/INewsstandNavigator;

    .line 83
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkItems:Ljava/util/ArrayList;

    .line 84
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkableItems:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getBookmarkData()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    .line 90
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/amazon/nwstd/bookmark/BookmarkListItem;

    invoke-direct {v1, p2, p3}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;-><init>(Lcom/amazon/android/docviewer/bookmarks/IBookmark;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkItems:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    invoke-virtual {p0}, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->updateBookmarkableList()V

    return-void
.end method


# virtual methods
.method public addBookmark(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V
    .locals 2

    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/bookmark/BookmarkListItem;

    invoke-virtual {v1}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->getBookmarkData()Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;

    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;-><init>(Lcom/amazon/android/docviewer/bookmarks/IBookmark;Landroid/content/Context;)V

    .line 170
    iget-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public deleteBookmark(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V
    .locals 3

    const/4 v0, 0x0

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/bookmark/BookmarkListItem;

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->getBookmarkData()Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v1}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->release()V

    .line 183
    iget-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateBookmarkableList()V
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mNewsstandNavigator:Lcom/amazon/nwstd/docviewer/INewsstandNavigator;

    invoke-interface {v0}, Lcom/amazon/nwstd/docviewer/INewsstandNavigator;->getActivePageIndexes()Ljava/util/Collection;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkableItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 106
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 108
    iget-object v2, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getBookmarkableItems(I)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    .line 111
    iget-object v3, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkableItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/amazon/nwstd/bookmark/BookmarkListItem;

    iget-object v5, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mContext:Landroid/content/Context;

    invoke-direct {v4, v2, v5}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;-><init>(Lcom/amazon/android/docviewer/bookmarks/IBookmark;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mBookmarkableItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
