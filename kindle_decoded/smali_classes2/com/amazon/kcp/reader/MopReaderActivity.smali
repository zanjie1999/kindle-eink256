.class public Lcom/amazon/kcp/reader/MopReaderActivity;
.super Lcom/amazon/kcp/reader/BookReaderActivity;
.source "MopReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/MopReaderActivity$SpinnerFadeOutListener;,
        Lcom/amazon/kcp/reader/MopReaderActivity$FirstPageRenderedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private firstOnResume:Z

.field private final m_annotationLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_annotationPrepopulationEventHandler:Lcom/amazon/android/docviewer/KindleDocViewerEvents;

.field private final m_firstPageRendered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_firstPageRenderedCallback:Lcom/amazon/foundation/ICallback;

.field private m_spinner:Landroid/widget/ProgressBar;

.field private m_spinnerBackground:Landroid/view/ViewGroup;

.field private shouldFlashOverlayAfterAnnotationLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/MopReaderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_firstPageRendered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_annotationLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->shouldFlashOverlayAfterAnnotationLoad:Z

    .line 60
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->firstOnResume:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/MopReaderActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_firstPageRendered:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/MopReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/MopReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/MopReaderActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/kcp/reader/MopReaderActivity;->dismissSpinnerIfReady()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/MopReaderActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_spinnerBackground:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/MopReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/MopReaderActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_spinner:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/MopReaderActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->shouldFlashOverlayAfterAnnotationLoad:Z

    return p0
.end method

.method private adjustOverlayAfterAnnotationLoad()V
    .locals 1

    .line 280
    new-instance v0, Lcom/amazon/kcp/reader/MopReaderActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/MopReaderActivity$3;-><init>(Lcom/amazon/kcp/reader/MopReaderActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dismissSpinnerIfReady()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_firstPageRendered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_annotationLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_spinnerBackground:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 268
    new-instance v1, Lcom/amazon/kcp/reader/MopReaderActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/MopReaderActivity$2;-><init>(Lcom/amazon/kcp/reader/MopReaderActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private onAnnotationsLoaded()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_annotationLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/amazon/kcp/reader/MopReaderActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/MopReaderActivity$1;-><init>(Lcom/amazon/kcp/reader/MopReaderActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_annotationLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    invoke-direct {p0}, Lcom/amazon/kcp/reader/MopReaderActivity;->adjustOverlayAfterAnnotationLoad()V

    .line 181
    invoke-direct {p0}, Lcom/amazon/kcp/reader/MopReaderActivity;->dismissSpinnerIfReady()V

    :cond_0
    return-void
.end method

.method private startTOCActivityForResult()V
    .locals 2

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/reader/BookTOCActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 262
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v1, 0x4

    .line 263
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    .line 238
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-object v0
.end method

.method protected goToTOC()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->hasHierarchicalTOC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/amazon/kcp/reader/MopReaderActivity;->startTOCActivityForResult()V

    goto :goto_0

    .line 249
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->goToTOC()V

    :goto_0
    return-void
.end method

.method public onAnnotationManagerEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 187
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_READ_FROM_SIDECAR:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/amazon/kcp/reader/MopReaderActivity;->onAnnotationsLoaded()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 64
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/BookReaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez p1, :cond_0

    .line 68
    sget-object p1, Lcom/amazon/kcp/reader/MopReaderActivity;->TAG:Ljava/lang/String;

    const-string v0, "Silently ignoring null docViewer in onCreate of MopReaderActivity"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureVirtualViewProvider;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->registerVirtualViewProvider(Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;)V

    .line 81
    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->isFirstTimeOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$layout;->pdf_render_spinner_layout:I

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    sget v1, Lcom/amazon/kindle/krl/R$id;->pdf_render_spinner_bg:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_spinnerBackground:Landroid/view/ViewGroup;

    .line 87
    sget v1, Lcom/amazon/kindle/krl/R$id;->pdf_render_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_spinner:Landroid/widget/ProgressBar;

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_firstPageRendered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_annotationLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "is_book_read"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->shouldFlashOverlayAfterAnnotationLoad:Z

    .line 93
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->shouldFlashOverlays:Z

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setOverlaysVisible(ZZ)V

    .line 98
    new-instance v0, Lcom/amazon/kcp/reader/MopReaderActivity$FirstPageRenderedCallback;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/MopReaderActivity$FirstPageRenderedCallback;-><init>(Lcom/amazon/kcp/reader/MopReaderActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_firstPageRenderedCallback:Lcom/amazon/foundation/ICallback;

    .line 99
    invoke-virtual {p1, v2}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->setBookOpenSpinnerInProgress(Z)V

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_firstPageRenderedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->setFirstPageLoadedEvent(Lcom/amazon/foundation/ICallback;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_annotationPrepopulationEventHandler:Lcom/amazon/android/docviewer/KindleDocViewerEvents;

    if-eqz v0, :cond_1

    .line 123
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    :cond_0
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->m_annotationPrepopulationEventHandler:Lcom/amazon/android/docviewer/KindleDocViewerEvents;

    .line 129
    :cond_1
    invoke-super {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->onDestroy()V

    return-void
.end method

.method public onDocViewerInitialDrawEvent(Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;->getPublisher()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onDocViewerInitialDrawEvent(Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;)V

    .line 200
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->prepopulateAnnotationText(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->onResume()V

    .line 107
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->firstOnResume:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity;->firstOnResume:Z

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->hasReadAnnotations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/amazon/kcp/reader/MopReaderActivity;->onAnnotationsLoaded()V

    :cond_1
    return-void
.end method
