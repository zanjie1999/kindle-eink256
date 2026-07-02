.class public final Lcom/amazon/kcp/reader/ReaderTtsBookBridge;
.super Ljava/lang/Object;
.source "ReaderTtsBookBridge.kt"

# interfaces
.implements Lcom/amazon/kindle/contentprovider/TtsBookBridge;


# instance fields
.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "docViewer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderTtsBookBridge;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderTtsBookBridge;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderTtsBookBridge;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    const-string v1, "this.docViewer.bookInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getKindleDoc()Lcom/amazon/android/docviewer/KindleDoc;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderTtsBookBridge;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    return-object v0
.end method

.method public getPageEndPosition()I
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderTtsBookBridge;->getKindleDoc()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getPageStartPosition()I
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderTtsBookBridge;->getKindleDoc()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTextBetweenPositions(II)Ljava/lang/String;
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderTtsBookBridge;->getWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/amazon/kcp/util/DocViewerUtils;->getTextBetweenPositions(IIILcom/amazon/kindle/search/IKindleWordTokenIterator;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DocViewerUtils.getTextBe\u2026, getWordTokenIterator())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderTtsBookBridge;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    return-object v0
.end method

.method public goToNextPage()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderTtsBookBridge;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToNextPage()V

    :cond_0
    return-void
.end method

.method public isNextPageAvailable()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderTtsBookBridge;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->hasNextPage()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
