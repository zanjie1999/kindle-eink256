.class final Lcom/amazon/android/docviewer/mobi/MobiBookTOC;
.super Lcom/amazon/android/docviewer/mobi/BaseBookTOC;
.source "MobiBookTOC.java"


# direct methods
.method private constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_topLevelChapters:Ljava/util/List;

    .line 34
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_chaptersPositionMap:Ljava/util/SortedMap;

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    .line 36
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getStartReadingPositionObject()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_startReadingPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    .line 38
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->getItem()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-direct {p0, p2}, Lcom/amazon/android/docviewer/mobi/MobiBookTOC;->traverseNodesPreOrder(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V

    :cond_0
    return-void
.end method

.method static createInstance(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)Lcom/amazon/android/docviewer/mobi/MobiBookTOC;
    .locals 3

    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->createNavigationControl()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->delete()V

    :cond_0
    return-object v0

    .line 50
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->createTocIterator()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_4

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->delete()V

    :cond_2
    if-eqz v1, :cond_3

    .line 59
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->delete()V

    :cond_3
    return-object v0

    .line 54
    :cond_4
    :try_start_2
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiBookTOC;

    invoke-direct {v0, p0, v2, p1}, Lcom/amazon/android/docviewer/mobi/MobiBookTOC;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    .line 57
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->delete()V

    :cond_5
    if-eqz v1, :cond_6

    .line 59
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->delete()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_7

    .line 57
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->delete()V

    :cond_7
    if-eqz v1, :cond_8

    .line 59
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->delete()V

    .line 60
    :cond_8
    throw p0
.end method

.method private traverseNodesPreOrder(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v4, v2

    move-object v8, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_0
    const v9, 0x7fffffff

    const v10, 0x7fffffff

    .line 83
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->getItem()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;

    move-result-object v11

    if-eqz v6, :cond_5

    if-nez v7, :cond_0

    .line 89
    invoke-virtual {v11}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v10

    invoke-static {v10}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v10

    iget-object v11, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_startReadingPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-static {v11}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 92
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->getCurrentIndex()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->moveToNextSibling()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->getItem()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;

    move-result-object v12

    .line 98
    invoke-virtual {v12}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v12

    invoke-static {v12}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v12

    iget-object v13, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_startReadingPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-static {v13}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    goto :goto_2

    :cond_1
    const v12, 0x7fffffff

    .line 100
    :goto_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v15, p1

    invoke-virtual {v15, v13, v14}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->moveToSibling(J)Z

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->getItem()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;

    move-result-object v11

    if-ge v12, v10, :cond_4

    .line 104
    invoke-virtual {v11}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v13

    iget-object v14, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_startReadingPosition:Lcom/amazon/kindle/krf/KRF/Reader/Position;

    invoke-virtual {v13, v14}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->valueGreaterOrEquals(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_3

    :cond_2
    if-nez v7, :cond_3

    .line 110
    new-instance v7, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;

    iget-object v8, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v11}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v10

    invoke-static {v10}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v10

    iget-object v13, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 111
    invoke-virtual {v13}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/amazon/kindle/krl/R$string;->front_matter_toc_item:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v8, v2, v10, v13}, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/INodeChapterTOCItem;ILjava/lang/String;)V

    .line 112
    iget-object v8, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v8, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_chaptersPositionMap:Ljava/util/SortedMap;

    invoke-virtual {v7}, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->getPosition()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v13, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v10, v13}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v8, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_topLevelChapters:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v7

    const/4 v7, 0x1

    .line 117
    :cond_3
    new-instance v10, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;

    iget-object v13, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-direct {v10, v13, v11, v8}, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;Lcom/amazon/android/docviewer/INodeChapterTOCItem;)V

    goto :goto_4

    .line 106
    :cond_4
    :goto_3
    new-instance v6, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;

    iget-object v12, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-direct {v6, v12, v11, v4}, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;Lcom/amazon/android/docviewer/INodeChapterTOCItem;)V

    move v12, v10

    move-object v10, v6

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    move-object/from16 v15, p1

    .line 120
    new-instance v12, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;

    iget-object v13, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-direct {v12, v13, v11, v4}, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;Lcom/amazon/android/docviewer/INodeChapterTOCItem;)V

    move-object/from16 v18, v12

    move v12, v10

    move-object/from16 v10, v18

    .line 123
    :goto_4
    iget-object v13, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v13, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_chaptersPositionMap:Ljava/util/SortedMap;

    invoke-virtual {v10}, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->getPosition()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_allNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v14, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v11}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getDepthLevel()J

    move-result-wide v13

    const-wide/16 v16, 0x0

    cmp-long v1, v13, v16

    if-nez v1, :cond_6

    if-nez v6, :cond_6

    .line 127
    iget-object v1, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_topLevelChapters:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 128
    :cond_6
    invoke-virtual {v11}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getDepthLevel()J

    move-result-wide v13

    cmp-long v1, v13, v16

    if-nez v1, :cond_8

    .line 130
    iget-object v1, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 131
    iget-object v1, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 133
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v11, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    invoke-interface {v11, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 138
    :cond_8
    iget-object v1, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 139
    iget-object v1, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 141
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v11, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->m_parentToSubchapters:Ljava/util/Map;

    invoke-interface {v11, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :goto_5
    iget v1, v0, Lcom/amazon/android/docviewer/mobi/BaseBookTOC;->MAX_DEPTH:I

    if-ge v5, v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->moveToFirstChild()Z

    move-result v1

    if-eqz v1, :cond_a

    add-int/lit8 v5, v5, 0x1

    move-object v4, v10

    const/4 v1, 0x1

    goto :goto_6

    .line 154
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->moveToNextSibling()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_b

    goto/16 :goto_0

    .line 162
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->moveToParent()Z

    move-result v1

    if-eqz v1, :cond_d

    if-nez v4, :cond_c

    goto :goto_7

    .line 165
    :cond_c
    invoke-interface {v4}, Lcom/amazon/android/docviewer/INodeChapterTOCItem;->getParent()Lcom/amazon/android/docviewer/INodeChapterTOCItem;

    move-result-object v1

    add-int/lit8 v5, v5, -0x1

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->moveToNextSibling()Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v4, v1

    goto/16 :goto_0

    :cond_d
    :goto_7
    return-void

    :cond_e
    move v10, v12

    goto/16 :goto_1
.end method
