.class public Lcom/amazon/kcp/reader/ui/PdfLayout;
.super Lcom/amazon/kcp/reader/ui/ReaderLayout;
.source "PdfLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static newInstance(Lcom/amazon/kcp/reader/PdfReaderActivity;)Lcom/amazon/kcp/reader/ui/PdfLayout;
    .locals 2

    .line 30
    sget v0, Lcom/amazon/kindle/krl/R$layout;->pdf_layout:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/PdfLayout;

    .line 32
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ui/PdfLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    return-object v0
.end method


# virtual methods
.method public areOverlaysVisible()Z
    .locals 2

    .line 59
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    const/4 v1, 0x7

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected createGestureDetector()Lcom/amazon/kcp/reader/ReaderGestureDetector;
    .locals 7

    .line 106
    new-instance v6, Lcom/amazon/kcp/reader/ReaderGestureDetector;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 110
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v4

    .line 111
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsPinchToChangeFontSize()Z

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/ReaderGestureDetector;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/kcp/reader/ReaderNavigator;ZZ)V

    return-object v6
.end method

.method public flashOverlays()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const-wide/16 v0, 0xdac

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysAfterDelay(J)V

    return-void
.end method

.method protected getMagnifyingGlassStubResId()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->pdf_magnifying_glass_vertical_stub:I

    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->pdf_magnifying_glass_horizontal_stub:I

    :goto_1
    return v0
.end method

.method protected getTitleView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getViewForMagnification()Landroid/view/View;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->magnified_content_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    return-void
.end method

.method public onOverlaysVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/PdfLayout;->setDecorationsVisible(Z)V

    return-void
.end method

.method public setDecorationsVisible(Z)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setDecorationsVisible(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setTitleVisibility(ZZ)V

    :cond_0
    return-void
.end method
