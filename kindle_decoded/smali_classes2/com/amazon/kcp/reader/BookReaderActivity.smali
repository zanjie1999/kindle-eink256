.class public Lcom/amazon/kcp/reader/BookReaderActivity;
.super Lcom/amazon/kcp/reader/ReaderActivity;
.source "BookReaderActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_notebookBackHandler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/amazon/kcp/reader/BookReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/BookReaderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/BookReaderActivity;)Lcom/amazon/kcp/reader/ReaderController;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    return-object p0
.end method

.method private createNotePopupDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 7

    .line 424
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 429
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationAtIndex(I)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v2

    .line 431
    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    .line 432
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 433
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    sget v3, Lcom/amazon/kindle/krl/R$string;->note_view_title_page:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 436
    :cond_1
    sget v4, Lcom/amazon/kindle/krl/R$string;->note_view_title:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 439
    :goto_0
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 441
    invoke-virtual {v3, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 442
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 443
    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 444
    sget v0, Lcom/amazon/kindle/krl/R$string;->edit:I

    new-instance v4, Lcom/amazon/kcp/reader/BookReaderActivity$4;

    invoke-direct {v4, p0, v2, p1}, Lcom/amazon/kcp/reader/BookReaderActivity$4;-><init>(Lcom/amazon/kcp/reader/BookReaderActivity;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;I)V

    invoke-virtual {v3, v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 461
    sget v0, Lcom/amazon/kindle/krl/R$string;->delete:I

    new-instance v2, Lcom/amazon/kcp/reader/BookReaderActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kcp/reader/BookReaderActivity$5;-><init>(Lcom/amazon/kcp/reader/BookReaderActivity;I)V

    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 472
    sget p1, Lcom/amazon/kindle/krl/R$string;->close:I

    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 473
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method private createVerifyAndDeleteAnnotationDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 4

    .line 478
    sget v0, Lcom/amazon/kindle/krl/R$string;->annotation_verify_delete_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    sget v1, Lcom/amazon/kindle/krl/R$string;->annotation_verify_delete_message:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 481
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 484
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 485
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 486
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 487
    sget v0, Lcom/amazon/kindle/krl/R$string;->delete:I

    new-instance v1, Lcom/amazon/kcp/reader/BookReaderActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/BookReaderActivity$6;-><init>(Lcom/amazon/kcp/reader/BookReaderActivity;I)V

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 505
    sget p1, Lcom/amazon/kindle/krl/R$string;->cancel:I

    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 507
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public execute()V
    .locals 0

    .line 512
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->initTicr()V

    .line 513
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->execute()V

    return-void
.end method

.method protected getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    check-cast v0, Lcom/amazon/kcp/reader/ui/BookLayout;

    return-object v0
.end method

.method protected getCustomMenuType()Lcom/amazon/android/menu/AndroidCustomMenuController$CustomMenu;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initTicr()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->initialize(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    :cond_1
    return-void
.end method

.method protected newCustomMenuController()Lcom/amazon/android/menu/AndroidCustomMenuController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected newReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .line 141
    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->newInstance(Lcom/amazon/kcp/reader/BookReaderActivity;)Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->enhancedNotebookSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Lcom/amazon/kcp/reader/BookReaderActivity$1;

    invoke-direct {v0, p0, p3}, Lcom/amazon/kcp/reader/BookReaderActivity$1;-><init>(Lcom/amazon/kcp/reader/BookReaderActivity;Landroid/content/Intent;)V

    .line 193
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_0

    .line 194
    iget-object v2, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->m_notebookBackHandler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBackDepth()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;->pushPostBackAction(JLcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;)V

    .line 197
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ReaderActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onBookOptionsPressed()V
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "search"

    .line 321
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 322
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ReaderActivity.onCreate()"

    const/4 v1, 0x1

    .line 83
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 85
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance p1, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    invoke-direct {p1}, Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->m_notebookBackHandler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    .line 88
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 92
    iget-object p1, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->m_notebookBackHandler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->addPostBackRenderHelper(Lcom/amazon/android/docviewer/PostBackRenderHelper;)V

    :cond_0
    const/4 p1, 0x0

    .line 95
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 96
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "BookReaderActivity"

    const-string v1, "BookOpenSuccess"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x6

    const-string v1, "ANNOTATION_INDEX"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 381
    sget-object v0, Lcom/amazon/kcp/reader/BookReaderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " while creating dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 377
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/BookReaderActivity;->createVerifyAndDeleteAnnotationDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 371
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/BookReaderActivity;->createNotePopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 386
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 388
    new-instance p2, Lcom/amazon/kcp/reader/BookReaderActivity$2;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/reader/BookReaderActivity$2;-><init>(Lcom/amazon/kcp/reader/BookReaderActivity;I)V

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 401
    new-instance p2, Lcom/amazon/kcp/reader/BookReaderActivity$3;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/reader/BookReaderActivity$3;-><init>(Lcom/amazon/kcp/reader/BookReaderActivity;I)V

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_1

    .line 417
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->m_notebookBackHandler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 75
    iget-object v1, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->m_notebookBackHandler:Lcom/amazon/kcp/sdk/event/BookReaderDocViewerEventHandler;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->removePostBackRenderHelper(Lcom/amazon/android/docviewer/PostBackRenderHelper;)V

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onDestroy()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 5

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 206
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v3, 0x0

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v3

    const-string v3, "bookOpenAnimationComplete"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 159
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onMultiWindowModeChanged(Z)V

    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object p1

    .line 169
    sget-object v0, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    if-eq p1, v0, :cond_0

    .line 170
    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->convertToScreenOrientation(Lcom/amazon/kindle/model/content/BookOrientation;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->setContentOrientation(I)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 9

    .line 213
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFirstLandingPosition()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    cmp-long v8, v1, v3

    if-nez v8, :cond_0

    .line 217
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 218
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    new-array v2, v7, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v3, v2, v5

    const-string v3, "backOutOnFirstLandingPage"

    .line 217
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->incrementCounters(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 223
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    new-array v2, v7, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v3, v2, v5

    const-string v3, "bookClosed"

    .line 222
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 225
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    new-array v2, v7, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->submitMetrics(Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "ReaderActivity.onResume()"

    const/4 v1, 0x1

    .line 118
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 120
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onResume()V

    const/4 v1, 0x0

    .line 122
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onSearchRequested()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onStart()V

    .line 103
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayExecuted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->initTicr()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 127
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onStop()V

    .line 131
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isRestartingForSettingChange:Z

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->tearDown(Z)V

    :cond_1
    return-void
.end method

.method public populateSupportedFeatureSet()V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 242
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 251
    :cond_2
    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->BackNavigation:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 254
    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->GraphicalHighlights:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 255
    invoke-static {v0}, Lcom/amazon/kcp/reader/features/GraphicalHighlightActivityFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v3

    .line 254
    invoke-virtual {p0, v1, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 257
    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 258
    invoke-static {v0}, Lcom/amazon/kcp/reader/features/BookmarkActivityFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v3

    .line 257
    invoke-virtual {p0, v1, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 262
    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Selection:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 263
    invoke-static {p0, v0}, Lcom/amazon/kcp/reader/features/SelectionActivityFeature;->isSupported(Landroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v3

    .line 262
    invoke-virtual {p0, v1, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 265
    const-class v1, Lcom/amazon/kcp/reader/features/SearchActivityFeature;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/features/SearchActivityFeature;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 268
    invoke-interface {v1, v0}, Lcom/amazon/kcp/reader/features/SearchActivityFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 270
    :goto_0
    sget-object v4, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Search:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v4, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 277
    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->ActiveArea:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    sget-object v4, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Selection:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 278
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 279
    invoke-static {v0}, Lcom/amazon/kcp/reader/features/ActiveAreaActivityFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 277
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 284
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    .line 287
    sget-object v2, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SearchBaidu:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-static {v1}, Lcom/amazon/kcp/reader/features/SearchBaiduActivityFeature;->isSupported(Lcom/amazon/kcp/application/IAuthenticationManager;)Z

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 289
    sget-object v2, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SearchWeb:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-static {v1}, Lcom/amazon/kcp/reader/features/SearchWebActivityFeature;->isSupported(Lcom/amazon/kcp/application/IAuthenticationManager;)Z

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    .line 292
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->isRestrictedAccount()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 295
    sget-object v1, Lcom/amazon/kcp/reader/BookReaderActivity;->TAG:Ljava/lang/String;

    const-string v2, "Setting BookReaderActivity child features"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->BookExtras:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 300
    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Sharing:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 304
    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->DictionaryCapabilities:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 308
    :cond_6
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-ne v1, v2, :cond_7

    .line 309
    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Sharing:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    :cond_7
    return-void
.end method

.method public requiresRegistration()Z
    .locals 3

    .line 332
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    .line 334
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    .line 338
    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    if-eq v1, v2, :cond_0

    .line 339
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v1

    if-nez v1, :cond_0

    check-cast v0, Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->isEncrypted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
