.class public final Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;
.super Ljava/lang/Object;
.source "MobiPeriodicalTOC.java"

# interfaces
.implements Lcom/amazon/nwstd/toc/IPeriodicalTOC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandCrossReplicaLink;,
        Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;,
        Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NodeFunction;,
        Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private articleBlocksIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

.field private control:Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;

.field private crossReplicaLinkIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

.field private mArticleListOfThumbnailsLoaded:Z

.field private final m_articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_articlesPositionMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_mastheadImageId:Ljava/lang/String;

.field private final m_replicaPageIdItemMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_replicaPageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_sectionsPositionMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

.field private replicaPageIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

.field private tocIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->control:Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;

    .line 70
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->tocIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    .line 71
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->replicaPageIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    .line 72
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->articleBlocksIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    .line 73
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->crossReplicaLinkIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->mArticleListOfThumbnailsLoaded:Z

    .line 88
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_sections:Ljava/util/List;

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articles:Ljava/util/List;

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_replicaPageItems:Ljava/util/List;

    .line 92
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_replicaPageIdItemMap:Ljava/util/SortedMap;

    .line 94
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_sectionsPositionMap:Ljava/util/SortedMap;

    .line 95
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articlesPositionMap:Ljava/util/SortedMap;

    .line 96
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_mastheadImageId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_mastheadImageId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_mastheadImageId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_sections:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/SortedMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_sectionsPositionMap:Ljava/util/SortedMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/SortedMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articlesPositionMap:Ljava/util/SortedMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_replicaPageItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)Ljava/util/SortedMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_replicaPageIdItemMap:Ljava/util/SortedMap;

    return-object p0
.end method

.method static createInstance(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;
    .locals 1

    .line 142
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V

    .line 145
    :try_start_0
    invoke-direct {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->init(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->destroy()V

    :goto_0
    return-object v0
.end method

.method private getArticleIndexAtPosition(I)I
    .locals 3

    .line 297
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadNCXMap()V

    .line 298
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 302
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articlesPositionMap:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 303
    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 306
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->getPosition()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method private init(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->createNavigationControl()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->control:Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;

    if-eqz p1, :cond_5

    .line 107
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->createTocIterator()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->tocIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->control:Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->createSecondaryTableIterator(J)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->getItem()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->getItem()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getNodeClass()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 118
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->getItem()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getNodeClass()Ljava/lang/String;

    move-result-object v1

    .line 119
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPageList:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->replicaPageIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    goto :goto_1

    .line 123
    :cond_0
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaArticleBlockList:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->articleBlocksIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    goto :goto_1

    .line 127
    :cond_1
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPageReferenceList:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->crossReplicaLinkIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->closeControlIfNeeded()V

    return-void

    .line 109
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unable to create toc iterator"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unable to open control"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private traverseArticleBlocksList(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V
    .locals 1

    .line 521
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$2;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$2;-><init>(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->traverseNodesPreOrder(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NodeFunction;)V

    return-void
.end method

.method private traverseNCXMap(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V
    .locals 1

    .line 465
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$1;-><init>(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->traverseNodesPreOrder(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NodeFunction;)V

    return-void
.end method

.method private traverseNodesPreOrder(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NodeFunction;)V
    .locals 1

    .line 681
    :cond_0
    :goto_0
    invoke-interface {p2, p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NodeFunction;->apply(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 684
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->moveToFirstChild()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 688
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->moveToNextSibling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->moveToParent()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 696
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->moveToNextSibling()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0
.end method

.method private traversePageReferenceList(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V
    .locals 1

    .line 587
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$3;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$3;-><init>(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->traverseNodesPreOrder(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NodeFunction;)V

    return-void
.end method

.method private traverseReplicaPageList(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V
    .locals 1

    .line 656
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$4;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$4;-><init>(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->traverseNodesPreOrder(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NodeFunction;)V

    return-void
.end method


# virtual methods
.method public closeControlIfNeeded()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->replicaPageIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    if-eqz v0, :cond_0

    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->tocIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    if-eqz v0, :cond_1

    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->articleBlocksIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    if-eqz v0, :cond_2

    return-void

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->crossReplicaLinkIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    if-eqz v0, :cond_3

    return-void

    .line 455
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->control:Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;

    if-eqz v0, :cond_4

    .line 456
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->delete()V

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->control:Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;

    :cond_4
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->replicaPageIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->delete()V

    .line 159
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->replicaPageIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->tocIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->delete()V

    .line 163
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->tocIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->articleBlocksIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->delete()V

    .line 167
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->articleBlocksIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->crossReplicaLinkIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->delete()V

    .line 171
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->crossReplicaLinkIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->control:Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;

    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->delete()V

    .line 175
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->control:Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;

    :cond_4
    return-void
.end method

.method public getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadNCXMap()V

    .line 231
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->getArticleIndexAtPosition(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/toc/IArticleTOCItem;

    return-object p1
.end method

.method public getLowestLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;
    .locals 0

    .line 272
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadNCXMap()V

    .line 273
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object p1

    return-object p1
.end method

.method public getReplicaPageById(Ljava/lang/String;)Lcom/amazon/nwstd/toc/IReplicaPageItem;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadReplicaPages()V

    .line 207
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_replicaPageIdItemMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/toc/IReplicaPageItem;

    return-object p1
.end method

.method public getReplicaPageItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/toc/IReplicaPageItem;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadReplicaPages()V

    .line 214
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_replicaPageItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSectionAtPosition(I)Lcom/amazon/nwstd/toc/ISectionTOCItem;
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadNCXMap()V

    .line 243
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 247
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_sectionsPositionMap:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 248
    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_sections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->getPosition()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_sections:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/toc/ISectionTOCItem;

    return-object p1
.end method

.method public getTOCArticles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/toc/IArticleTOCItem;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadNCXMap()V

    .line 190
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTOCSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/toc/ISectionTOCItem;",
            ">;"
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadNCXMap()V

    .line 183
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_sections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitleImage()Lcom/amazon/android/docviewer/ImageProvider;
    .locals 2

    .line 220
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadNCXMap()V

    .line 221
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_mastheadImageId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getImageFromImageId(Ljava/lang/String;)Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v0

    return-object v0
.end method

.method public getTocRange(I)Lcom/amazon/android/docviewer/IKindleTOC$TocRange;
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadNCXMap()V

    .line 280
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->getArticleIndexAtPosition(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->getPosition()I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    .line 286
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    const p1, 0x7fffffff

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_articles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->getPosition()I

    move-result p1

    .line 288
    :goto_0
    new-instance v1, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v1, v0, p1}, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;-><init>(II)V

    return-object v1
.end method

.method public getTopLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;
    .locals 0

    .line 267
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadNCXMap()V

    .line 268
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->getSectionAtPosition(I)Lcom/amazon/nwstd/toc/ISectionTOCItem;

    move-result-object p1

    return-object p1
.end method

.method public getTopLevelTOCItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadNCXMap()V

    .line 261
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->getTOCSections()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasReplicaPageItems()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->replicaPageIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->m_replicaPageIdItemMap:Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public loadArticleBlocks()V
    .locals 3

    .line 316
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadReplicaPages()V

    .line 317
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->articleBlocksIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    if-eqz v0, :cond_2

    .line 319
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "Loading article blocks"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This code is not thread safe"

    invoke-static {v0, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->articleBlocksIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->traverseArticleBlocksList(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V

    .line 325
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->articleBlocksIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->delete()V

    const/4 v0, 0x0

    .line 326
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->articleBlocksIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    .line 327
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->closeControlIfNeeded()V

    :cond_2
    return-void
.end method

.method public loadCrossReplicaLinks()V
    .locals 3

    .line 335
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadReplicaPages()V

    .line 336
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->crossReplicaLinkIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    if-eqz v0, :cond_2

    .line 338
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "Loading cross replica links"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This code is not thread safe"

    invoke-static {v0, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->crossReplicaLinkIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->traversePageReferenceList(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V

    .line 344
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->crossReplicaLinkIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->delete()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->crossReplicaLinkIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    .line 346
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->closeControlIfNeeded()V

    :cond_2
    return-void
.end method

.method public loadNCXMap()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->tocIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    if-eqz v0, :cond_2

    .line 374
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "Loading NCX map (articles, sections, image title)"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This code is not thread safe"

    invoke-static {v0, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->tocIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->traverseNCXMap(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V

    .line 380
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->tocIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->delete()V

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->tocIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    .line 382
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->closeControlIfNeeded()V

    :cond_2
    return-void
.end method

.method public loadReplicaPages()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->replicaPageIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    if-eqz v0, :cond_2

    .line 356
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "Loading replica pages"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This code is not thread safe"

    invoke-static {v0, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->replicaPageIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->traverseReplicaPageList(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V

    .line 362
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->replicaPageIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->delete()V

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->replicaPageIter:Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    .line 364
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->closeControlIfNeeded()V

    :cond_2
    return-void
.end method
