.class public Lcom/amazon/kindle/search/KindleSearchItem$SearchResult;
.super Lcom/amazon/android/docviewer/BookSearchResult;
.source "KindleSearchItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/search/KindleSearchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResult"
.end annotation


# instance fields
.field private final m_Viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 9

    move-object v8, p0

    .line 70
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    move v4, p5

    invoke-interface {v0, p5}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v7

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/amazon/android/docviewer/BookSearchResult;-><init>(Ljava/lang/String;IIIIII)V

    move-object/from16 v0, p8

    .line 71
    iput-object v0, v8, Lcom/amazon/kindle/search/KindleSearchItem$SearchResult;->query:Ljava/lang/String;

    move-object v0, p1

    .line 72
    iput-object v0, v8, Lcom/amazon/kindle/search/KindleSearchItem$SearchResult;->m_Viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method


# virtual methods
.method public gotoLocation()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/search/KindleSearchItem$SearchResult;->m_Viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setSearchResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    .line 82
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 85
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BookSearchResult;->getSearchStartPosition()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_1
    return-void
.end method
