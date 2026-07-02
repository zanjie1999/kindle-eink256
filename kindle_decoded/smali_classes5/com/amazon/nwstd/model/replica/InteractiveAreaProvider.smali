.class public Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;
.super Ljava/lang/Object;
.source "InteractiveAreaProvider.java"


# instance fields
.field private mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

.field private m_crossReplicaLinkCallBack:Lcom/amazon/foundation/IIntCallback;

.field private m_tapToTextCallBack:Lcom/amazon/foundation/IIntCallback;

.field private m_toc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/toc/IPeriodicalTOC;Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;Lcom/amazon/foundation/IIntCallback;Lcom/amazon/foundation/IIntCallback;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_toc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    .line 29
    iput-object p3, p0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_tapToTextCallBack:Lcom/amazon/foundation/IIntCallback;

    .line 30
    iput-object p4, p0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_crossReplicaLinkCallBack:Lcom/amazon/foundation/IIntCallback;

    .line 31
    iput-object p2, p0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    return-void
.end method


# virtual methods
.method public createDoubleTapInteractiveAreas(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Ljava/util/Vector;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mapper/PageIndex;",
            "I)",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/mobi/IInteractiveArea;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 36
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 37
    iget-object v4, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_toc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v4}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/nwstd/toc/IReplicaPageItem;

    .line 39
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 40
    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v5, v6}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v3

    :cond_0
    if-nez v4, :cond_1

    const/4 v1, 0x0

    return-object v1

    .line 49
    :cond_1
    :try_start_0
    invoke-interface {v4}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleBlocks()Ljava/util/Collection;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x2

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v5, :cond_6

    invoke-interface {v4}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleBlocks()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 73
    :cond_2
    invoke-interface {v4}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleBlocks()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/nwstd/toc/IArticleBlocks;

    .line 75
    invoke-interface {v5}, Lcom/amazon/nwstd/toc/IArticleBlocks;->getRectangles()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/RectF;

    .line 77
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    if-ne v2, v10, :cond_5

    .line 80
    iget-object v13, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    invoke-interface {v13, v1, v10}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v13

    xor-int/2addr v13, v8

    if-eqz v13, :cond_4

    .line 82
    iget v13, v14, Landroid/graphics/RectF;->left:F

    div-float/2addr v13, v11

    iput v13, v14, Landroid/graphics/RectF;->left:F

    .line 83
    iget v13, v14, Landroid/graphics/RectF;->right:F

    div-float/2addr v13, v11

    iput v13, v14, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 85
    :cond_4
    iget v13, v14, Landroid/graphics/RectF;->left:F

    div-float/2addr v13, v11

    add-float/2addr v13, v9

    iput v13, v14, Landroid/graphics/RectF;->left:F

    .line 86
    iget v13, v14, Landroid/graphics/RectF;->right:F

    div-float/2addr v13, v11

    add-float/2addr v13, v9

    iput v13, v14, Landroid/graphics/RectF;->right:F

    .line 89
    :cond_5
    :goto_1
    new-instance v13, Lcom/amazon/nwstd/model/replica/ArticleBlockArea;

    invoke-interface {v5}, Lcom/amazon/nwstd/toc/IArticleBlocks;->getPosition()I

    move-result v15

    iget-object v9, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_tapToTextCallBack:Lcom/amazon/foundation/IIntCallback;

    invoke-direct {v13, v14, v15, v9}, Lcom/amazon/nwstd/model/replica/ArticleBlockArea;-><init>(Landroid/graphics/RectF;ILcom/amazon/foundation/IIntCallback;)V

    .line 90
    invoke-virtual {v3, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/high16 v9, 0x3f000000    # 0.5f

    goto :goto_0

    .line 54
    :cond_6
    :goto_2
    invoke-interface {v4}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v5

    if-lez v5, :cond_9

    invoke-interface {v4}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result v5

    if-lez v5, :cond_9

    .line 56
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v6, v6, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-ne v2, v10, :cond_8

    .line 59
    iget-object v9, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    invoke-interface {v9, v1, v10}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v9

    xor-int/2addr v9, v8

    if-eqz v9, :cond_7

    .line 61
    iget v9, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v9, v11

    iput v9, v5, Landroid/graphics/RectF;->left:F

    .line 62
    iget v9, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v9, v11

    iput v9, v5, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 64
    :cond_7
    iget v9, v5, Landroid/graphics/RectF;->left:F

    div-float/2addr v9, v11

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v9, v12

    iput v9, v5, Landroid/graphics/RectF;->left:F

    .line 65
    iget v9, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v9, v11

    add-float/2addr v9, v12

    iput v9, v5, Landroid/graphics/RectF;->right:F

    .line 68
    :cond_8
    :goto_3
    new-instance v9, Lcom/amazon/nwstd/model/replica/ArticleBlockArea;

    invoke-interface {v4}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result v4

    iget-object v12, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_tapToTextCallBack:Lcom/amazon/foundation/IIntCallback;

    invoke-direct {v9, v5, v4, v12}, Lcom/amazon/nwstd/model/replica/ArticleBlockArea;-><init>(Landroid/graphics/RectF;ILcom/amazon/foundation/IIntCallback;)V

    invoke-virtual {v3, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_9
    iget-object v4, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    invoke-interface {v4, v1, v10}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    .line 97
    :goto_4
    iget-object v5, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    invoke-interface {v5, v1, v10}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isLastPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v5

    xor-int/2addr v5, v8

    if-ne v2, v10, :cond_e

    if-eqz v5, :cond_e

    if-eqz v4, :cond_e

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v2

    add-int/2addr v2, v8

    iget-object v4, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_toc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v4}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 102
    iget-object v2, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_toc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v2}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v1

    add-int/2addr v1, v8

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/toc/IReplicaPageItem;

    if-eqz v1, :cond_c

    .line 103
    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleBlocks()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleBlocks()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_c

    .line 108
    :cond_b
    invoke-interface {v1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v2

    if-lez v2, :cond_e

    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result v2

    if-lez v2, :cond_e

    .line 110
    new-instance v2, Lcom/amazon/nwstd/model/replica/ArticleBlockArea;

    new-instance v4, Landroid/graphics/RectF;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v4, v5, v6, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result v1

    iget-object v5, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_tapToTextCallBack:Lcom/amazon/foundation/IIntCallback;

    invoke-direct {v2, v4, v1, v5}, Lcom/amazon/nwstd/model/replica/ArticleBlockArea;-><init>(Landroid/graphics/RectF;ILcom/amazon/foundation/IIntCallback;)V

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    if-eqz v1, :cond_e

    .line 115
    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleBlocks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/toc/IArticleBlocks;

    .line 117
    invoke-interface {v2}, Lcom/amazon/nwstd/toc/IArticleBlocks;->getRectangles()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 119
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 120
    iget v5, v6, Landroid/graphics/RectF;->left:F

    div-float/2addr v5, v11

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    iput v5, v6, Landroid/graphics/RectF;->left:F

    .line 121
    iget v5, v6, Landroid/graphics/RectF;->right:F

    div-float/2addr v5, v11

    add-float/2addr v5, v7

    iput v5, v6, Landroid/graphics/RectF;->right:F

    .line 122
    new-instance v5, Lcom/amazon/nwstd/model/replica/ArticleBlockArea;

    invoke-interface {v2}, Lcom/amazon/nwstd/toc/IArticleBlocks;->getPosition()I

    move-result v8

    iget-object v9, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_tapToTextCallBack:Lcom/amazon/foundation/IIntCallback;

    invoke-direct {v5, v6, v8, v9}, Lcom/amazon/nwstd/model/replica/ArticleBlockArea;-><init>(Landroid/graphics/RectF;ILcom/amazon/foundation/IIntCallback;)V

    .line 123
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    :cond_e
    :goto_6
    return-object v3
.end method

.method public createSingleTapInteractiveAreas(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Ljava/util/Vector;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mapper/PageIndex;",
            "I)",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/mobi/IInteractiveArea;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 137
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 138
    iget-object v4, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_toc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v4}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/nwstd/toc/IReplicaPageItem;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v2, v6, :cond_1

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    .line 147
    :goto_0
    iget-object v8, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    invoke-interface {v8, v1, v7}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v8

    xor-int/2addr v8, v6

    .line 148
    iget-object v9, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    invoke-interface {v9, v1, v7}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isLastPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v7

    xor-int/2addr v7, v6

    .line 152
    :try_start_0
    invoke-interface {v4}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getCrossReplicaLink()Ljava/util/Collection;

    move-result-object v9

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v9, :cond_5

    invoke-interface {v4}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getCrossReplicaLink()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 154
    invoke-interface {v4}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getCrossReplicaLink()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/nwstd/toc/ICrossReplicaLink;

    .line 156
    invoke-interface {v9}, Lcom/amazon/nwstd/toc/ICrossReplicaLink;->getRectangles()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/RectF;

    .line 158
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    if-ne v2, v5, :cond_4

    if-eqz v8, :cond_3

    .line 162
    iget v13, v14, Landroid/graphics/RectF;->left:F

    div-float/2addr v13, v11

    iput v13, v14, Landroid/graphics/RectF;->left:F

    .line 163
    iget v13, v14, Landroid/graphics/RectF;->right:F

    div-float/2addr v13, v11

    iput v13, v14, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 165
    :cond_3
    iget v13, v14, Landroid/graphics/RectF;->left:F

    div-float/2addr v13, v11

    add-float/2addr v13, v10

    iput v13, v14, Landroid/graphics/RectF;->left:F

    .line 166
    iget v13, v14, Landroid/graphics/RectF;->right:F

    div-float/2addr v13, v11

    add-float/2addr v13, v10

    iput v13, v14, Landroid/graphics/RectF;->right:F

    .line 169
    :cond_4
    :goto_2
    new-instance v13, Lcom/amazon/nwstd/model/replica/CrossReplicaLinkArea;

    invoke-interface {v9}, Lcom/amazon/nwstd/toc/ICrossReplicaLink;->getReplicaPage()I

    move-result v15

    iget-object v10, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_crossReplicaLinkCallBack:Lcom/amazon/foundation/IIntCallback;

    invoke-direct {v13, v14, v15, v10}, Lcom/amazon/nwstd/model/replica/CrossReplicaLinkArea;-><init>(Landroid/graphics/RectF;ILcom/amazon/foundation/IIntCallback;)V

    .line 170
    invoke-virtual {v3, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/high16 v10, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_5
    if-ne v2, v5, :cond_7

    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v2

    add-int/2addr v2, v6

    iget-object v4, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_toc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v4}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 177
    iget-object v2, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_toc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v2}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v1

    add-int/2addr v1, v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/toc/IReplicaPageItem;

    if-eqz v1, :cond_7

    .line 178
    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getCrossReplicaLink()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getCrossReplicaLink()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_7

    .line 180
    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getCrossReplicaLink()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/toc/ICrossReplicaLink;

    .line 182
    invoke-interface {v2}, Lcom/amazon/nwstd/toc/ICrossReplicaLink;->getRectangles()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 184
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 185
    iget v5, v6, Landroid/graphics/RectF;->left:F

    div-float/2addr v5, v11

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    iput v5, v6, Landroid/graphics/RectF;->left:F

    .line 186
    iget v5, v6, Landroid/graphics/RectF;->right:F

    div-float/2addr v5, v11

    add-float/2addr v5, v7

    iput v5, v6, Landroid/graphics/RectF;->right:F

    .line 187
    new-instance v5, Lcom/amazon/nwstd/model/replica/CrossReplicaLinkArea;

    invoke-interface {v2}, Lcom/amazon/nwstd/toc/ICrossReplicaLink;->getReplicaPage()I

    move-result v8

    iget-object v9, v0, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->m_crossReplicaLinkCallBack:Lcom/amazon/foundation/IIntCallback;

    invoke-direct {v5, v6, v8, v9}, Lcom/amazon/nwstd/model/replica/CrossReplicaLinkArea;-><init>(Landroid/graphics/RectF;ILcom/amazon/foundation/IIntCallback;)V

    .line 188
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :cond_7
    return-object v3
.end method
