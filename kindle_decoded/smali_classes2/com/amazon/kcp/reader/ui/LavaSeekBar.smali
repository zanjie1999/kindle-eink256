.class public Lcom/amazon/kcp/reader/ui/LavaSeekBar;
.super Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;
.source "LavaSeekBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private normalizeProgress(I)I
    .locals 1

    .line 22
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookStartingPosition()I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/LavaSeekBar;->normalizeProgress(I)I

    move-result v0

    return v0
.end method

.method protected resetMapping(II)V
    .locals 0

    .line 55
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/LavaSeekBar;->normalizeProgress(I)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->resetMapping(II)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/LavaSeekBar;->getProgress()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookStartingPosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setProgress(I)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setProgress(I)V

    :goto_0
    return-void
.end method
