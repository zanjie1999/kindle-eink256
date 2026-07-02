.class public Lcom/amazon/kcp/reader/ui/BookLayout;
.super Lcom/amazon/kcp/reader/ui/ReaderLayout;
.source "BookLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static newInstance(Lcom/amazon/kcp/reader/BookReaderActivity;)Lcom/amazon/kcp/reader/ui/BookLayout;
    .locals 8

    const-string v0, "Creating reader layout"

    const/4 v1, 0x1

    .line 30
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    .line 35
    :cond_0
    iget v2, v2, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutId:I

    .line 36
    :goto_0
    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/BookLayoutFactory;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->getLayoutId(Lcom/amazon/kindle/model/content/ILocalBookInfo;)I

    move-result v3

    .line 38
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->useLayoutCache()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 39
    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/LayoutCache;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/LayoutCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/amazon/kcp/reader/ui/LayoutCache;->getLayout(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/ui/BookLayout;

    .line 40
    iput v3, v4, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutId:I

    .line 43
    sget v6, Lcom/amazon/kindle/krl/R$id;->reader_plugin_overlay_stub:I

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    .line 45
    sget v6, Lcom/amazon/kindle/krl/R$id;->reader_plugin_overlay:I

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 46
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/krl/R$layout;->reader_plugin_overlay_stub:I

    .line 47
    invoke-virtual {v6, v7, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    :cond_1
    sget v6, Lcom/amazon/kindle/krl/R$id;->reader_plugin_surface_stub:I

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    .line 52
    sget v6, Lcom/amazon/kindle/krl/R$id;->reader_plugin_surface:I

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 53
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/krl/R$layout;->reader_plugin_surface_stub:I

    .line 54
    invoke-virtual {v6, v7, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v4, v5

    :cond_3
    :goto_1
    const/4 v6, 0x0

    if-eq v3, v2, :cond_5

    .line 59
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->useLayoutCache()Z

    move-result v2

    if-nez v2, :cond_4

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inflate BookLayout "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 61
    invoke-static {p0, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/ui/BookLayout;

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 64
    iput v3, v2, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutId:I

    move-object v4, v2

    :cond_4
    const-string v2, "BookLayout.initialize(Activity)"

    .line 67
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 68
    invoke-virtual {v4, p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 69
    invoke-static {v2, v6}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 72
    :cond_5
    invoke-static {v0, v6}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object v4
.end method


# virtual methods
.method public areOverlaysVisible()Z
    .locals 3

    .line 128
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 132
    :cond_0
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOverlayFlags(Z)I

    move-result v0

    .line 133
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSeekerLocationText()Ljava/lang/String;
    .locals 13

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getSeekPosition()I

    move-result v2

    .line 187
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v3

    const/4 v4, 0x0

    if-lez v2, :cond_2

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v5, v2

    int-to-double v7, v3

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double v5, v5, v7

    .line 193
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v3, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 196
    :goto_1
    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v5

    .line 197
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v6

    invoke-interface {v1, v6}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v6

    .line 198
    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v7}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x3

    if-eqz v7, :cond_4

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 199
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getLastBodyPageLabel()Ljava/lang/String;

    move-result-object v1

    .line 201
    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v7}, Lcom/amazon/android/docviewer/KindleDocViewer;->suppressLocations()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 202
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v6, Lcom/amazon/kindle/krl/R$string;->current_page_footer:I

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v4

    aput-object v1, v7, v9

    .line 204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    .line 202
    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 207
    :cond_3
    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v11, Lcom/amazon/kindle/krl/R$string;->current_page_location:I

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v2, v12, v4

    aput-object v1, v12, v9

    .line 209
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v12, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v12, v10

    const/4 v1, 0x4

    .line 210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v12, v1

    .line 207
    invoke-virtual {v7, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 213
    :cond_4
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->current_location:I

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-virtual {v1, v2, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 3

    .line 105
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 115
    :goto_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->synchronizer:Lcom/amazon/kcp/reader/ui/Synchronizer;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/Synchronizer;->initialize(Lcom/amazon/kindle/sync/SynchronizationManager;)V

    return-void
.end method

.method public onDocViewerInitialDrawEvent(Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;->getPublisher()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onDocViewerInitialDrawEvent(Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;)V

    .line 171
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initializeAccessibility()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const-string v0, "ReaderLayout.onFinishInflate()"

    const/4 v1, 0x1

    .line 98
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 99
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onFinishInflate()V

    const/4 v1, 0x0

    .line 100
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->setDecorationsVisible(Z)V

    return-void
.end method

.method public setDecorationsVisible(Z)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setDecorationsVisible(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setTitleVisibility(ZZ)V

    :cond_0
    return-void
.end method

.method public setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->synchronizer:Lcom/amazon/kcp/reader/ui/Synchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/Synchronizer;->setOnSyncMessageListener(Lcom/amazon/kcp/sync/ISyncMessageListener;)V

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-void
.end method

.method public setOverlaysVisible(ZZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 0

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    xor-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setTitleVisibility(ZZ)V

    .line 143
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->isBackAvailable()Z

    :cond_0
    return-object p0
.end method
