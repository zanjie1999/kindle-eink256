.class public Lcom/amazon/krf/platform/KRFFragment;
.super Lcom/amazon/krf/platform/KRFFragmentBase;
.source "KRFFragment.java"

# interfaces
.implements Lcom/amazon/krf/internal/PageTransitionDataProvider;
.implements Lcom/amazon/krf/platform/PageTransitionListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final KRF_START_POSITION:J = 0x1L


# instance fields
.field private mBook:Lcom/amazon/krf/platform/KRFBook;

.field private mPageManagerDelegatePtr:J

.field private mPageManagerPtr:J

.field private mPageTransitionController:Lcom/amazon/krf/internal/PageTransitionController;

.field private mSettings:Lcom/amazon/krf/platform/ViewSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/krf/platform/KRFFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFFragmentBase;-><init>()V

    return-void
.end method

.method private acquirePageViewFromNativePage(J)Lcom/amazon/krf/platform/KRFPageView;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 364
    :cond_0
    invoke-static {p1, p2}, Lcom/amazon/krf/platform/KRFFragment;->nativeGetPageViewFromNativePage(J)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 370
    :cond_1
    new-instance v0, Lcom/amazon/krf/platform/KRFPageView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/krf/platform/KRFPageView;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private convertToPointerArray(Ljava/util/ArrayList;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;)[J"
        }
    .end annotation

    .line 348
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 349
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 350
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/KRFPageView;

    invoke-virtual {v2}, Lcom/amazon/krf/platform/KRFPageView;->getPagePointer()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private disposePageManager()V
    .locals 5

    .line 402
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageManagerPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 403
    invoke-static {v0, v1}, Lcom/amazon/krf/platform/KRFFragment;->nativeDisposePageManager(J)V

    .line 404
    iput-wide v2, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageManagerPtr:J

    :cond_0
    return-void
.end method

.method private disposePageManagerDelegate()V
    .locals 5

    .line 409
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageManagerDelegatePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 410
    invoke-static {v0, v1}, Lcom/amazon/krf/platform/KRFFragment;->nativeDisposePageManagerDelegate(J)V

    .line 411
    iput-wide v2, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageManagerDelegatePtr:J

    :cond_0
    return-void
.end method

.method private static native nativeCreatePageAdjacentToPage(JZJ)J
.end method

.method private static native nativeCreatePageAtOffset(IJ)J
.end method

.method private static native nativeCreatePageAtPosition(Lcom/amazon/krf/platform/Position;J)J
.end method

.method private static native nativeCreatePageManager(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings;J)J
.end method

.method private static native nativeCreatePageManagerDelegate()J
.end method

.method private static native nativeDidDisplayPages([J[JZZJ)V
.end method

.method private static native nativeDisposePageManager(J)V
.end method

.method private static native nativeDisposePageManagerDelegate(J)V
.end method

.method private static native nativeGetPageViewFromNativePage(J)Lcom/amazon/krf/platform/KRFPageView;
.end method

.method private static native nativeWillDisplayPages([J[JZJ)V
.end method


# virtual methods
.method public addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public addSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V
    .locals 0

    return-void
.end method

.method public canGoToCoverPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canGoToNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canGoToPreviousPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canGoToTableOfContentsPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearSelection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public didDisplayPages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;ZZ)V"
        }
    .end annotation

    .line 341
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRFFragment;->convertToPointerArray(Ljava/util/ArrayList;)[J

    move-result-object v0

    .line 342
    invoke-direct {p0, p2}, Lcom/amazon/krf/platform/KRFFragment;->convertToPointerArray(Ljava/util/ArrayList;)[J

    move-result-object v1

    .line 343
    iget-wide v4, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageManagerPtr:J

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/amazon/krf/platform/KRFFragment;->nativeDidDisplayPages([J[JZZJ)V

    return-void
.end method

.method public dispose()V
    .locals 0

    .line 417
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFFragment;->disposePageManager()V

    .line 418
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFFragment;->disposePageManagerDelegate()V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFFragment;->dispose()V

    .line 424
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBook()Lcom/amazon/krf/platform/KRFBook;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mBook:Lcom/amazon/krf/platform/KRFBook;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageTransitionController:Lcom/amazon/krf/internal/PageTransitionController;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/PageTransitionController;->getPagerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageTransitionController:Lcom/amazon/krf/internal/PageTransitionController;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/PageTransitionController;->getPagerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHistoryManager()Lcom/amazon/krf/platform/HistoryManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageElements()[Lcom/amazon/krf/platform/element/PageElement;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/krf/platform/element/PageElement;

    return-object v0
.end method

.method public getPageViewAdjacentToPageView(Lcom/amazon/krf/platform/KRFPageView;Z)Lcom/amazon/krf/platform/KRFPageView;
    .locals 4

    .line 317
    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFPageView;->getPagePointer()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageManagerPtr:J

    .line 316
    invoke-static {v0, v1, p2, v2, v3}, Lcom/amazon/krf/platform/KRFFragment;->nativeCreatePageAdjacentToPage(JZJ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/platform/KRFFragment;->acquirePageViewFromNativePage(J)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    return-object p1
.end method

.method public getPageViewAtOffset(I)Lcom/amazon/krf/platform/KRFPageView;
    .locals 2

    .line 310
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageManagerPtr:J

    invoke-static {p1, v0, v1}, Lcom/amazon/krf/platform/KRFFragment;->nativeCreatePageAtOffset(IJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/amazon/krf/platform/KRFFragment;->acquirePageViewFromNativePage(J)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    return-object p1
.end method

.method public getPageViewAtPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/KRFPageView;
    .locals 2

    .line 322
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageManagerPtr:J

    invoke-static {p1, v0, v1}, Lcom/amazon/krf/platform/KRFFragment;->nativeCreatePageAtPosition(Lcom/amazon/krf/platform/Position;J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/amazon/krf/platform/KRFFragment;->acquirePageViewFromNativePage(J)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    return-object p1
.end method

.method public getPositionRange()Lcom/amazon/krf/platform/PositionRange;
    .locals 2

    .line 118
    new-instance v0, Lcom/amazon/krf/platform/PositionRange;

    sget-object v1, Lcom/amazon/krf/platform/Position;->invalidPosition:Lcom/amazon/krf/platform/Position;

    invoke-direct {v0, v1, v1}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    return-object v0
.end method

.method public getSettings()Lcom/amazon/krf/platform/ViewSettings;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mSettings:Lcom/amazon/krf/platform/ViewSettings;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageTransitionController:Lcom/amazon/krf/internal/PageTransitionController;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/PageTransitionController;->getPagerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageTransitionController:Lcom/amazon/krf/internal/PageTransitionController;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/PageTransitionController;->getPagerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public goToCoverPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goToFirstPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goToLastPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goToLocation(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public goToNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goToPercent(D)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public goToPosition(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageTransitionController:Lcom/amazon/krf/internal/PageTransitionController;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/PageTransitionController;->goToPosition(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPositionAsync(Lcom/amazon/krf/platform/Position;)Z
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRFFragment;->goToPosition(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPositionOnLoad(Lcom/amazon/krf/platform/Position;)Z
    .locals 0

    .line 284
    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRFFragment;->goToPosition(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPositionOnLoadAsync(Lcom/amazon/krf/platform/Position;)Z
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRFFragment;->goToPositionAsync(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPreviousPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goToStartReadingPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goToTableOfContentsPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance p1, Lcom/amazon/krf/internal/SlidePageTransitionController;

    invoke-direct {p1}, Lcom/amazon/krf/internal/SlidePageTransitionController;-><init>()V

    iput-object p1, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageTransitionController:Lcom/amazon/krf/internal/PageTransitionController;

    .line 41
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/krf/internal/PageTransitionController;->initialize(Landroid/content/Context;)V

    .line 42
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageTransitionController:Lcom/amazon/krf/internal/PageTransitionController;

    invoke-virtual {p1, p0}, Lcom/amazon/krf/internal/PageTransitionController;->setListener(Lcom/amazon/krf/platform/PageTransitionListener;)V

    .line 43
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageTransitionController:Lcom/amazon/krf/internal/PageTransitionController;

    invoke-virtual {p1, p0}, Lcom/amazon/krf/internal/PageTransitionController;->setDataProvider(Lcom/amazon/krf/internal/PageTransitionDataProvider;)V

    .line 44
    invoke-static {}, Lcom/amazon/krf/platform/KRFFragment;->nativeCreatePageManagerDelegate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageManagerDelegatePtr:J

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageTransitionController:Lcom/amazon/krf/internal/PageTransitionController;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/PageTransitionController;->getPagerView()Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public removeNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 59
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {v0}, Lcom/amazon/krf/platform/ViewSettings;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/krf/platform/KRFFragment;->setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;)Z

    move-result p1

    return p1
.end method

.method public setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;)Z
    .locals 4

    .line 66
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFFragment;->disposePageManager()V

    .line 68
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFFragment;->mBook:Lcom/amazon/krf/platform/KRFBook;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageTransitionController:Lcom/amazon/krf/internal/PageTransitionController;

    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/krf/internal/PageTransitionController;->setBookInfo(Lcom/amazon/krf/platform/KRFBookInfo;)V

    .line 75
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/amazon/krf/platform/KRFFragment;->setSettings(Lcom/amazon/krf/platform/ViewSettings;)V
    :try_end_0
    .catch Lcom/amazon/krf/exception/InvalidSettingsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageManagerDelegatePtr:J

    invoke-static {p1, p3, v0, v1}, Lcom/amazon/krf/platform/KRFFragment;->nativeCreatePageManager(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    .line 82
    iput-wide v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageManagerPtr:J

    if-nez p2, :cond_1

    const-wide/16 p2, 0x1

    .line 85
    invoke-interface {p1, p2, p3}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object p2

    .line 89
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amazon/krf/platform/KRFFragment;->goToPosition(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1

    :catch_0
    return v0
.end method

.method public setContentDecorationEventListener(Lcom/amazon/krf/platform/ContentDecorationEventListener;)V
    .locals 0

    return-void
.end method

.method public setDefaultUIEventHandler(Lcom/amazon/krf/platform/UIEventHandler;)V
    .locals 0

    return-void
.end method

.method public setOrientationLockRequestListener(Lcom/amazon/krf/platform/OrientationLockRequestListener;)V
    .locals 0

    return-void
.end method

.method public setRubberbandingEnabled(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setSelectionRange(Lcom/amazon/krf/platform/PositionRange;)V
    .locals 0

    return-void
.end method

.method public setSelectionRanges(Lcom/amazon/krf/platform/PositionRange;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setSettings(Lcom/amazon/krf/platform/ViewSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/InvalidSettingsException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 159
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 160
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 162
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    .line 164
    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setDPI(F)V

    .line 165
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFFragment;->mSettings:Lcom/amazon/krf/platform/ViewSettings;

    return-void

    .line 157
    :cond_0
    new-instance p1, Lcom/amazon/krf/exception/InvalidSettingsException;

    invoke-direct {p1}, Lcom/amazon/krf/exception/InvalidSettingsException;-><init>()V

    throw p1
.end method

.method public willDisplayPages(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 332
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRFFragment;->convertToPointerArray(Ljava/util/ArrayList;)[J

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 333
    :goto_0
    invoke-direct {p0, p2}, Lcom/amazon/krf/platform/KRFFragment;->convertToPointerArray(Ljava/util/ArrayList;)[J

    move-result-object p2

    .line 334
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFFragment;->mPageManagerPtr:J

    invoke-static {p1, p2, p3, v0, v1}, Lcom/amazon/krf/platform/KRFFragment;->nativeWillDisplayPages([J[JZJ)V

    return-void
.end method
