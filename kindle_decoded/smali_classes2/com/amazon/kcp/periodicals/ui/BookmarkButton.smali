.class public Lcom/amazon/kcp/periodicals/ui/BookmarkButton;
.super Landroid/widget/ImageView;
.source "BookmarkButton.java"


# instance fields
.field private final callback:Lcom/amazon/foundation/IIntCallback;

.field private final pageNumber:I

.field private final toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/BookmarkButton$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton$1;-><init>(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->callback:Lcom/amazon/foundation/IIntCallback;

    .line 37
    iput-object p2, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    .line 38
    iput p3, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->pageNumber:I

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 42
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->callback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->registerToggleEventCallback(Lcom/amazon/foundation/IIntCallback;)V

    .line 44
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->updateImage()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->pageNumber:I

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->updateImage()V

    return-void
.end method

.method private updateImage()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget v1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->pageNumber:I

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->isPageBookmarked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget v0, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_reader_imm_bm_active:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->callback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->unregisterToggleEventCallback(Lcom/amazon/foundation/IIntCallback;)V

    return-void
.end method

.method public toggle()Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget v1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->pageNumber:I

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->hasBookmarksForLocationIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget v1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->pageNumber:I

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->removeBookmarksForLocationIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Deleted:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    return-object v0

    .line 66
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Error:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    return-object v0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget v1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->pageNumber:I

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->toggleBookmarkForLocationIndex(I)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    move-result-object v0

    return-object v0
.end method
