.class public Lcom/amazon/kcp/reader/ui/StandaloneReaderMenuContainer;
.super Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;
.source "StandaloneReaderMenuContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected inflateWaypointViewStub()Z
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isListableBookLocalPDF(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isListableBookLocalMOP(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->inflateWaypointViewStub()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOverlaysVisible(ZZ)V
    .locals 0

    if-nez p1, :cond_1

    .line 19
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 20
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setOverlaysVisible(ZZ)V

    return-void
.end method
