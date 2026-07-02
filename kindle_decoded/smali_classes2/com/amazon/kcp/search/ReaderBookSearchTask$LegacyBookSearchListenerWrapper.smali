.class Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;
.super Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;
.source "ReaderBookSearchTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/ReaderBookSearchTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LegacyBookSearchListenerWrapper"
.end annotation


# static fields
.field private static final MAX_TOC_LEVEL:I = 0x1


# instance fields
.field private final currentResultGroupStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation
.end field

.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final searchListener:Lcom/amazon/kindle/krx/search/IOnSearchListener;

.field private toc:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/search/IOnSearchListener;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 87
    iput-object p2, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->searchListener:Lcom/amazon/kindle/krx/search/IOnSearchListener;

    .line 89
    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->currentResultGroupStack:Ljava/util/Stack;

    const/4 p2, 0x0

    .line 91
    iput-object p2, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->toc:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    .line 92
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOCForSearch()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    .line 93
    instance-of p2, p1, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    if-eqz p2, :cond_0

    .line 94
    check-cast p1, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->toc:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    :cond_0
    return-void
.end method

.method private beginSearchResultGroup(Lcom/amazon/android/docviewer/ITOCItem;)V
    .locals 3

    .line 117
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v1, Lcom/amazon/kcp/search/ReaderBookSearchResultGroup;

    .line 120
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/search/IReaderSearchManager;->getSearchUtils()Lcom/amazon/kindle/krx/search/ISearchUtils;

    move-result-object v0

    .line 121
    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/search/ISearchUtils;->stripWhitespaceAndConsecutiveSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/kcp/search/ReaderBookSearchResultGroup;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->searchListener:Lcom/amazon/kindle/krx/search/IOnSearchListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/search/IOnSearchListener;->onBeginSearchResultGroup(Lcom/amazon/kindle/krx/search/ISearchResultGroup;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->currentResultGroupStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private endAllSearchResultGroups()V
    .locals 1

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->currentResultGroupStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->endSearchResultGroup()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private endSearchResultGroup()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->searchListener:Lcom/amazon/kindle/krx/search/IOnSearchListener;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/search/IOnSearchListener;->onEndSearchResultGroup()V

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->currentResultGroupStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method private getCurrentResultGroupTocItem()Lcom/amazon/android/docviewer/ITOCItem;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->currentResultGroupStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->currentResultGroupStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/ITOCItem;

    return-object v0
.end method

.method private getCurrentResultGroupTocLevel()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->currentResultGroupStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private isResultTocLevelDeeperThanCurrentResultGroup(I)Z
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->getCurrentResultGroupTocLevel()I

    move-result v0

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setupSearchResultGroup(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->toc:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    if-eqz v0, :cond_4

    .line 216
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getSearchStartPosition()I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;->getHierarchyForPosition(II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 219
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 225
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/ITOCItem;

    .line 226
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->shouldEndCurrentResultGroup(Lcom/amazon/android/docviewer/ITOCItem;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->endSearchResultGroup()V

    goto :goto_1

    .line 230
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->isResultTocLevelDeeperThanCurrentResultGroup(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    invoke-direct {p0, v1}, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->beginSearchResultGroup(Lcom/amazon/android/docviewer/ITOCItem;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->endAllSearchResultGroups()V

    :cond_4
    return-void
.end method

.method private shouldEndCurrentResultGroup(Lcom/amazon/android/docviewer/ITOCItem;I)Z
    .locals 3

    .line 191
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->getCurrentResultGroupTocItem()Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 195
    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    const/4 v2, 0x1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 197
    :goto_0
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->isResultTocLevelDeeperThanCurrentResultGroup(I)Z

    move-result p2

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public onSearchResult(Lcom/amazon/kcp/search/IBookSearchController;Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 1

    .line 244
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->setupSearchResultGroup(Lcom/amazon/android/docviewer/BookSearchResult;)V

    .line 246
    iget-object p1, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->searchListener:Lcom/amazon/kindle/krx/search/IOnSearchListener;

    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0, p2}, Lcom/amazon/kcp/search/ReaderBookSearchResult;->createFromLegacyResult(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/BookSearchResult;)Lcom/amazon/kcp/search/ReaderBookSearchResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/search/IOnSearchListener;->onSearchResult(Lcom/amazon/kindle/krx/search/ISearchResult;)V

    return-void
.end method

.method public onSearchStopped(Lcom/amazon/kcp/search/IBookSearchController;Z)V
    .locals 1

    .line 251
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->endAllSearchResultGroups()V

    .line 252
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchTask$LegacyBookSearchListenerWrapper;->searchListener:Lcom/amazon/kindle/krx/search/IOnSearchListener;

    invoke-interface {v0, p2}, Lcom/amazon/kindle/krx/search/IOnSearchListener;->onSearchFinished(Z)V

    .line 254
    invoke-interface {p1, p0}, Lcom/amazon/kcp/search/IBookSearchController;->removeBookSearchListener(Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;)V

    return-void
.end method
