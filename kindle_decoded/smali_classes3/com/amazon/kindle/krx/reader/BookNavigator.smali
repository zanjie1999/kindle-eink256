.class public Lcom/amazon/kindle/krx/reader/BookNavigator;
.super Lcom/amazon/kindle/krx/reader/BaseBookNavigator;
.source "BookNavigator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private readerController:Lcom/amazon/kcp/reader/IReaderController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/reader/BookNavigator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/IReaderController;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BaseBookNavigator;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/krx/reader/BookNavigator;)Lcom/amazon/kindle/nln/BaseNonLinearFragment;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getActiveNLNFragment()Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/krx/reader/BookNavigator;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/krx/reader/BookNavigator;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->clearSelection()V

    return-void
.end method

.method private clearSelection()V
    .locals 1

    .line 656
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 658
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    :cond_0
    return-void
.end method

.method private getActiveNLNFragment()Lcom/amazon/kindle/nln/BaseNonLinearFragment;
    .locals 5

    .line 726
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getNonLinearNavigationMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 730
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    .line 732
    sget-object v3, Lcom/amazon/kindle/krx/reader/BookNavigator$11;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    return-object v1

    .line 735
    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 736
    instance-of v2, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    :cond_2
    return-object v1
.end method

.method private getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    return-object v0
.end method

.method private getDocument()Lcom/amazon/android/docviewer/KindleDoc;
    .locals 1

    .line 672
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 673
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getNonLinearNavigationMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;
    .locals 3

    .line 74
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    .line 75
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 76
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {v1}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-object v0

    .line 84
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getCurrentNLNMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPageEndPosition(Lcom/amazon/android/docviewer/IDocumentPage;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    if-eqz p1, :cond_0

    .line 689
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result p1

    .line 690
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPageStartPosition(Lcom/amazon/android/docviewer/IDocumentPage;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    if-eqz p1, :cond_0

    .line 679
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result p1

    .line 680
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getReaderNavigator()Lcom/amazon/kcp/reader/ReaderNavigator;
    .locals 1

    .line 639
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getNavigator()Lcom/amazon/kcp/reader/ReaderNavigator;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isPositionOnPage(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/android/docviewer/IDocumentPage;)Z
    .locals 1

    .line 697
    invoke-direct {p0, p2}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getPageStartPosition(Lcom/amazon/android/docviewer/IDocumentPage;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 698
    invoke-direct {p0, p2}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getPageEndPosition(Lcom/amazon/android/docviewer/IDocumentPage;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 701
    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 711
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 712
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 713
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 715
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public animateToNextPage()V
    .locals 2

    .line 593
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getReaderNavigator()Lcom/amazon/kcp/reader/ReaderNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    new-instance v1, Lcom/amazon/kindle/krx/reader/BookNavigator$8;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator$8;-><init>(Lcom/amazon/kindle/krx/reader/BookNavigator;Lcom/amazon/kcp/reader/ReaderNavigator;)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/krx/reader/BookNavigator;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public animateToPreviousPage()V
    .locals 2

    .line 624
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getReaderNavigator()Lcom/amazon/kcp/reader/ReaderNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    new-instance v1, Lcom/amazon/kindle/krx/reader/BookNavigator$10;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator$10;-><init>(Lcom/amazon/kindle/krx/reader/BookNavigator;Lcom/amazon/kcp/reader/ReaderNavigator;)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/krx/reader/BookNavigator;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public commitToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 132
    new-instance v0, Lcom/amazon/kindle/krx/reader/BookNavigator$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/krx/reader/BookNavigator$1;-><init>(Lcom/amazon/kindle/krx/reader/BookNavigator;Lcom/amazon/kindle/krx/reader/IPosition;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentPage()Lcom/amazon/kindle/krx/reader/IPage;
    .locals 5

    .line 370
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    new-instance v1, Lcom/amazon/kindle/krx/reader/Page;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/amazon/kindle/krx/reader/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 3

    .line 413
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getActiveNLNFragment()Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    move-result-object v0

    .line 414
    instance-of v1, v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusedPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 421
    invoke-interface {v2}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0

    .line 424
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getMostRecentPageReadEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 3

    .line 395
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getActiveNLNFragment()Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    move-result-object v0

    .line 396
    instance-of v1, v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusedPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 403
    invoke-interface {v2}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0

    .line 406
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentReaderNavigationMode()Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getNonLinearNavigationMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/reader/BookNavigator$11;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 61
    sget-object v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    return-object v0

    .line 58
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    return-object v0

    .line 56
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    return-object v0
.end method

.method public getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 312
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGHLPositionFactory()Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/reader/IGHLPositionFactory<",
            "+",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;"
        }
    .end annotation

    .line 547
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getGHLPositionFactory()Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMostRecentPageReadEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 387
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 380
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNextPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 359
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getNextPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getPageEndPosition(Lcom/amazon/android/docviewer/IDocumentPage;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 348
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getNextPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getPageStartPosition(Lcom/amazon/android/docviewer/IDocumentPage;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/reader/IPositionFactory<",
            "+",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;"
        }
    .end annotation

    .line 529
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 539
    :cond_1
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;-><init>()V

    return-object v0
.end method

.method public getPreviousPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 337
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPreviousPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getPageEndPosition(Lcom/amazon/android/docviewer/IDocumentPage;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 326
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPreviousPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getPageStartPosition(Lcom/amazon/android/docviewer/IDocumentPage;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 298
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartReadingPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 506
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getStartReadingPosition()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTOC()Lcom/amazon/kindle/krx/reader/ITableOfContents;
    .locals 3

    const/4 v0, 0x0

    .line 469
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 471
    new-instance v2, Lcom/amazon/kindle/krx/reader/TableOfContents;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/amazon/kindle/krx/reader/TableOfContents;-><init>(Lcom/amazon/android/docviewer/IKindleTOC;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getTOCForReadingMode(Lcom/amazon/kindle/krx/reader/BookReadingMode;)Lcom/amazon/kindle/krx/reader/ITableOfContents;
    .locals 4

    const/4 v0, 0x0

    .line 486
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 488
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOCForReadingMode(Lcom/amazon/kindle/krx/reader/BookReadingMode;)Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 490
    new-instance p1, Lcom/amazon/kindle/krx/reader/TableOfContents;

    invoke-direct {p1, v1}, Lcom/amazon/kindle/krx/reader/TableOfContents;-><init>(Lcom/amazon/android/docviewer/IKindleTOC;)V

    move-object v0, p1

    goto :goto_0

    .line 492
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/reader/BookNavigator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOC not found for the reading mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/reader/BookNavigator;->TAG:Ljava/lang/String;

    const-string v1, "Kindle Document not found"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    sget-object p1, Lcom/amazon/kindle/krx/reader/BookNavigator;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get the ToC for the given reading mode. Doing nothing and returning null"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public goToLandmark(Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 235
    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLandmarkPosition(Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 237
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/reader/BookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_1
    return-void
.end method

.method public goToLocation(I)V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->goToLocation(ILjava/lang/String;)V

    return-void
.end method

.method public goToLocation(ILjava/lang/String;)V
    .locals 8

    .line 193
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getActiveNLNFragment()Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    move-result-object p2

    .line 194
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v3, :cond_4

    .line 199
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 201
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    .line 202
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->supportsLocationToPositionConversion()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_3

    int-to-long v6, p1

    .line 203
    invoke-interface {v3, v6, v7}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFromLocation(J)I

    move-result v4

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_1
    if-eq v4, v5, :cond_4

    .line 205
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    xor-int/2addr v0, v2

    .line 206
    invoke-virtual {p2, v3, v0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->scrollToPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    :cond_4
    if-eqz v1, :cond_5

    .line 213
    new-instance p2, Lcom/amazon/kindle/krx/reader/BookNavigator$3;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kindle/krx/reader/BookNavigator$3;-><init>(Lcom/amazon/kindle/krx/reader/BookNavigator;I)V

    invoke-direct {p0, p2}, Lcom/amazon/kindle/krx/reader/BookNavigator;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public goToNextPage()V
    .locals 1

    .line 554
    new-instance v0, Lcom/amazon/kindle/krx/reader/BookNavigator$6;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/reader/BookNavigator$6;-><init>(Lcom/amazon/kindle/krx/reader/BookNavigator;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public goToNextPage(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;",
            ">;)V"
        }
    .end annotation

    .line 570
    new-instance v0, Lcom/amazon/kindle/krx/reader/BookNavigator$7;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/krx/reader/BookNavigator$7;-><init>(Lcom/amazon/kindle/krx/reader/BookNavigator;Ljava/util/EnumSet;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    return-void
.end method

.method public goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    return-void
.end method

.method public goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_7

    .line 103
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getActiveNLNFragment()Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 110
    :goto_2
    invoke-static {p3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "SyncMostRecentPage"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "SyncFurthestPageRead"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 112
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 114
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object p3

    if-eqz p3, :cond_5

    if-nez p2, :cond_5

    .line 116
    invoke-virtual {p3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->suppressNextWaypoint()V

    :cond_5
    if-eqz v4, :cond_6

    xor-int/lit8 p2, v1, 0x1

    .line 120
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->scrollToPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    :cond_6
    if-eqz v5, :cond_7

    .line 124
    invoke-virtual {p0, p1, v2}, Lcom/amazon/kindle/krx/reader/BookNavigator;->updateMostRecentPageReadPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    :cond_7
    return-void
.end method

.method public goToPositionNoWaypoint(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->navigateDocument(Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    return-void
.end method

.method public goToPreviousPage()V
    .locals 1

    .line 609
    new-instance v0, Lcom/amazon/kindle/krx/reader/BookNavigator$9;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/reader/BookNavigator$9;-><init>(Lcom/amazon/kindle/krx/reader/BookNavigator;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasNextPage()Z
    .locals 1

    .line 514
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->isNextPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPreviousPage()Z
    .locals 1

    .line 520
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->isPrevPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTOC()Z
    .locals 1

    .line 459
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->hasTOC()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPositionOnCurrentPage(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 1

    .line 429
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->isPositionOnPage(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/android/docviewer/IDocumentPage;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPositionOnNextPage(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 1

    .line 449
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getNextPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->isPositionOnPage(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/android/docviewer/IDocumentPage;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPositionOnPreviousPage(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 1

    .line 439
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPreviousPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->isPositionOnPage(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/android/docviewer/IDocumentPage;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public navigateDocument(Lcom/amazon/kindle/krx/reader/IPosition;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 253
    new-instance v0, Lcom/amazon/kindle/krx/reader/BookNavigator$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/kindle/krx/reader/BookNavigator$4;-><init>(Lcom/amazon/kindle/krx/reader/BookNavigator;ZLcom/amazon/kindle/krx/reader/IPosition;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public navigateToPercent(DZZ)V
    .locals 7

    .line 275
    new-instance v6, Lcom/amazon/kindle/krx/reader/BookNavigator$5;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-wide v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/reader/BookNavigator$5;-><init>(Lcom/amazon/kindle/krx/reader/BookNavigator;ZDZ)V

    invoke-direct {p0, v6}, Lcom/amazon/kindle/krx/reader/BookNavigator;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateMostRecentPageReadPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->updateMostRecentPageReadPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    return-void
.end method

.method public updateMostRecentPageReadPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 172
    new-instance v0, Lcom/amazon/kindle/krx/reader/BookNavigator$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/reader/BookNavigator$2;-><init>(Lcom/amazon/kindle/krx/reader/BookNavigator;Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
