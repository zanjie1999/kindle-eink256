.class public Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;
.super Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;
.source "ReplicaBookmarkManager.java"


# instance fields
.field private mToc:Lcom/amazon/android/docviewer/IKindleTOC;

.field private m_tocLocator:Lcom/amazon/android/docviewer/KindleTOCLocator;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleTOCLocator;Lcom/amazon/android/docviewer/IKindleTOC;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 26
    iput-object p3, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->mToc:Lcom/amazon/android/docviewer/IKindleTOC;

    .line 28
    iput-object p2, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->m_tocLocator:Lcom/amazon/android/docviewer/KindleTOCLocator;

    return-void
.end method

.method private isAnyArticleInPageBookmarked(I)Z
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->isPageBookmarked(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected createBookmarkItem(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/amazon/android/docviewer/bookmarks/IBookmark;
    .locals 11

    .line 55
    new-instance v9, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v1

    move-object v10, p0

    iget-object v0, v10, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->mToc:Lcom/amazon/android/docviewer/IKindleTOC;

    move-object v2, v0

    check-cast v2, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    move-object v0, v9

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;-><init>(Lcom/amazon/nwstd/persistence/LocalPeriodicalState;Lcom/amazon/nwstd/toc/IPeriodicalTOC;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method protected createBookmarkItemForLocationIndex(II)Lcom/amazon/android/docviewer/bookmarks/IBookmark;
    .locals 11

    .line 67
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->m_tocLocator:Lcom/amazon/android/docviewer/KindleTOCLocator;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageAtPosition(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->hasNoTarget()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->m_tocLocator:Lcom/amazon/android/docviewer/KindleTOCLocator;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getFragmentPositionForReplicaPage(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->mToc:Lcom/amazon/android/docviewer/IKindleTOC;

    check-cast v1, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v1, v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->mToc:Lcom/amazon/android/docviewer/IKindleTOC;

    check-cast v2, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v2, v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IArticleTOCItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object v9, v1

    move-object v10, v9

    .line 75
    :goto_1
    new-instance v0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v3

    iget-object v1, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->mToc:Lcom/amazon/android/docviewer/IKindleTOC;

    move-object v4, v1

    check-cast v4, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->getOpenBookAsin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getLocalPeriodicalState()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->getOpenBookGuid()Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    move v7, p1

    move v8, p2

    invoke-direct/range {v2 .. v10}, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkStub;-><init>(Lcom/amazon/nwstd/persistence/LocalPeriodicalState;Lcom/amazon/nwstd/toc/IPeriodicalTOC;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBookmarkableItems(I)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 34
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 35
    iget-object v2, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->m_tocLocator:Lcom/amazon/android/docviewer/KindleTOCLocator;

    invoke-virtual {v2, p1}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageAtPosition(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;

    if-eqz v2, :cond_2

    .line 37
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->getArticleBlocks()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 39
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/nwstd/toc/IArticleBlocks;

    .line 40
    iget-object v4, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->mToc:Lcom/amazon/android/docviewer/IKindleTOC;

    check-cast v4, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v3}, Lcom/amazon/nwstd/toc/IArticleBlocks;->getPosition()I

    move-result v3

    invoke-interface {v4, v3}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v3

    .line 41
    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-interface {v3}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v4

    invoke-interface {v3}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/amazon/nwstd/toc/IArticleTOCItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v4, v5, v3}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->createBookmarkItem(IILjava/lang/String;Ljava/lang/String;)Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getBookmarkFromIndex(I)Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method protected getPeriodicalPageCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->mToc:Lcom/amazon/android/docviewer/IKindleTOC;

    check-cast v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isPageBookmarked(I)Z
    .locals 3

    .line 86
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->isLocationBookmarked(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;->isAnyArticleInPageBookmarked(I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method
