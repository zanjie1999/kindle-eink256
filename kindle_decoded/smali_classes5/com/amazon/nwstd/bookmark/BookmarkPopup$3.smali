.class Lcom/amazon/nwstd/bookmark/BookmarkPopup$3;
.super Ljava/lang/Object;
.source "BookmarkPopup.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/bookmark/BookmarkPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/foundation/internal/IObjectCallback<",
        "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/bookmark/BookmarkPopup;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/bookmark/BookmarkPopup;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup$3;->this$0:Lcom/amazon/nwstd/bookmark/BookmarkPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup$3;->this$0:Lcom/amazon/nwstd/bookmark/BookmarkPopup;

    iget-object v0, v0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkListModel:Lcom/amazon/nwstd/bookmark/BookmarkListModel;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->deleteBookmark(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup$3;->this$0:Lcom/amazon/nwstd/bookmark/BookmarkPopup;

    invoke-virtual {p1}, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->refresh()V

    .line 105
    iget-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup$3;->this$0:Lcom/amazon/nwstd/bookmark/BookmarkPopup;

    invoke-virtual {p1}, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->updateBookmarkListView()V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/bookmark/BookmarkPopup$3;->execute(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V

    return-void
.end method
