.class public Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;
.super Ljava/lang/Object;
.source "ReplicaBookmarkStub.java"

# interfaces
.implements Lcom/amazon/android/docviewer/bookmarks/IBookmark;


# instance fields
.field private articleTitle:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

.field private mLocalState:Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

.field private mToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/persistence/LocalPeriodicalState;Lcom/amazon/nwstd/toc/IPeriodicalTOC;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->mLocalState:Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    .line 22
    iput-object p2, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->mToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    if-nez p3, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->getOpenBookAsin()Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-nez p4, :cond_1

    .line 24
    iget-object p1, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->mLocalState:Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    invoke-virtual {p1}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->getOpenBookGuid()Ljava/lang/String;

    move-result-object p4

    .line 25
    :cond_1
    new-instance p1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    invoke-direct {p1, p3, p4, p5, p6}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    .line 26
    iput-object p8, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->description:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->articleTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)I
    .locals 0

    .line 75
    invoke-static {p0, p1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkComparator;->compare(Lcom/amazon/android/docviewer/bookmarks/IBookmark;Lcom/amazon/android/docviewer/bookmarks/IBookmark;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->compareTo(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 92
    :cond_1
    const-class v2, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 94
    :cond_2
    check-cast p1, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;

    .line 95
    iget-object v2, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    if-nez v2, :cond_3

    .line 96
    iget-object p1, p1, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    if-eqz p1, :cond_4

    return v1

    .line 98
    :cond_3
    iget-object p1, p1, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    invoke-virtual {v2, p1}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getArticleTitle()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->articleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBookAsin()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->mLocalState:Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    invoke-virtual {v0}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->getOpenBookAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookGuid()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->mLocalState:Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    invoke-virtual {v0}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->getOpenBookGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    iget v0, v0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->pageId:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    iget v0, v0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->position:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 4

    .line 67
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->article_list_image_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->article_list_image_max_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 70
    iget-object v2, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->mToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v2}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->getIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/toc/IReplicaPageItem;

    invoke-interface {v2}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getThumbnailImage()Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(II)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/android/docviewer/ImageProvider;->createBitmap(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isBookmarked()Z
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->mLocalState:Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    iget-object v1, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    iget v2, v1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->pageId:I

    iget v1, v1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->position:I

    invoke-virtual {v0, v2, v1}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->isLocationBookmarked(II)Z

    move-result v0

    return v0
.end method
