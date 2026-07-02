.class Lcom/amazon/kcp/periodicals/fragments/SortedListFragment$1;
.super Ljava/lang/Object;
.source "SortedListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/fragments/SortedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/nwstd/bookmark/BookmarkListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/fragments/SortedListFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/fragments/SortedListFragment;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/SortedListFragment$1;->this$0:Lcom/amazon/kcp/periodicals/fragments/SortedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/nwstd/bookmark/BookmarkListItem;Lcom/amazon/nwstd/bookmark/BookmarkListItem;)I
    .locals 0

    .line 19
    invoke-virtual {p1}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->getBookmarkData()Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->getBookmarkData()Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lcom/amazon/nwstd/bookmark/BookmarkListItem;

    check-cast p2, Lcom/amazon/nwstd/bookmark/BookmarkListItem;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/periodicals/fragments/SortedListFragment$1;->compare(Lcom/amazon/nwstd/bookmark/BookmarkListItem;Lcom/amazon/nwstd/bookmark/BookmarkListItem;)I

    move-result p1

    return p1
.end method
