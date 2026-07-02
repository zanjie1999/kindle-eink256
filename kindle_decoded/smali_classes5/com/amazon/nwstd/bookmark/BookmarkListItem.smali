.class public Lcom/amazon/nwstd/bookmark/BookmarkListItem;
.super Ljava/lang/Object;
.source "BookmarkListItem.java"


# instance fields
.field private final mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

.field private final mContext:Landroid/content/Context;

.field private mThumbnailImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/bookmarks/IBookmark;Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mThumbnailImage:Landroid/graphics/Bitmap;

    .line 34
    iput-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    .line 35
    iput-object p2, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBookmarkData()Lcom/amazon/android/docviewer/bookmarks/IBookmark;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    return-object v0
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->getPreviewText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewText()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getIndex()I

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getDescription()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getThumbnailImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getIndex()I

    move-result v1

    if-nez v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->thumbnailItem_cover_string:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 87
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 83
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->page_number_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mBookmark:Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public release()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->mThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
