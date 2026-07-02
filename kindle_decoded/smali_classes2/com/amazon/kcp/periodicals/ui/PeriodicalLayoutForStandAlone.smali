.class public Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;
.super Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
.source "PeriodicalLayoutForStandAlone.java"


# instance fields
.field private final ZOOMPAN_ZOOM_DISTANCE_THRESHOLD_FONT_SIZE:F

.field private final mBookmarkToggleCallback:Lcom/amazon/foundation/IIntCallback;

.field private mBrightnessGestureHandler:Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;

.field private mFontSizeGestureHandler:Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x41c80000    # 25.0f

    .line 42
    iput p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->ZOOMPAN_ZOOM_DISTANCE_THRESHOLD_FONT_SIZE:F

    .line 58
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->mBookmarkToggleCallback:Lcom/amazon/foundation/IIntCallback;

    return-void
.end method

.method private addReaderGestureHandlerIfNeeded()V
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getGestureHandlerFactory()Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->mBrightnessGestureHandler:Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getService()Lcom/amazon/kcp/reader/gestures/GestureService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->mBrightnessGestureHandler:Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->mBrightnessGestureHandler:Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->mBrightnessGestureHandler:Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->addHandler(Lcom/amazon/kindle/krx/gesture/IGestureHandler;)Z

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->mFontSizeGestureHandler:Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;

    if-nez v1, :cond_2

    .line 119
    new-instance v1, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getService()Lcom/amazon/kcp/reader/gestures/GestureService;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;F)V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->mFontSizeGestureHandler:Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;

    .line 121
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->mFontSizeGestureHandler:Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->mFontSizeGestureHandler:Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->addHandler(Lcom/amazon/kindle/krx/gesture/IGestureHandler;)Z

    :cond_3
    return-void
.end method

.method private convertStatusBarToOverlay()V
    .locals 6

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/forstandalone/R$bool;->offset_reader_action_bar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 144
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->statusBarHeight:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x10

    const-string v1, "Caught exception while shifting the action bar!"

    .line 150
    invoke-static {v0, v1}, Lcom/amazon/kcp/log/Log;->log(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private layoutReplicaNavBar(IIII)V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 523
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    .line 524
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    .line 525
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v1

    .line 526
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v0

    .line 529
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int p2, p4, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 530
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v1, p3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 533
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sub-int p2, p4, p2

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getBottomMenuHeight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getBottomMenuHeight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 537
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p2, p3, p1, p4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static setStatusBarVisibility(Landroid/view/View;Z)V
    .locals 2

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/16 v0, 0x500

    if-nez p1, :cond_0

    const/16 v0, 0x505

    .line 170
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->destroy()V

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getBookmarkManager()Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->mBookmarkToggleCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->unregisterToggleEventCallback(Lcom/amazon/foundation/IIntCallback;)V

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    .line 281
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getChromeColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;
    .locals 1

    .line 274
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->periodical_menu_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    return-object v0
.end method

.method protected getOverlayFlags(Z)I
    .locals 2

    if-eqz p1, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_2

    .line 557
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOverlayFlags(Z)I

    move-result v0

    if-eqz p1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 565
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getUpsellController()Lcom/amazon/nwstd/upsell/UpsellController;

    move-result-object v1

    if-eqz p1, :cond_4

    .line 566
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/nwstd/upsell/UpsellController;->isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    or-int/lit16 p1, v0, 0x80

    and-int/lit8 v0, p1, -0x21

    :cond_4
    return v0
.end method

.method public handleOverlaysOnSearchEnded(Z)V
    .locals 0

    .line 241
    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->closeSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public hideBookmarkList()V
    .locals 4

    .line 193
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->inflateBookmarkList()Z

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 199
    invoke-interface {v0, v1}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->hide(Z)Z

    .line 202
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getVisibleOverlays()I

    move-result v0

    and-int/lit8 v0, v0, -0x41

    .line 204
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getUpsellController()Lcom/amazon/nwstd/upsell/UpsellController;

    move-result-object v2

    .line 205
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/nwstd/upsell/UpsellController;->isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    and-int/lit8 v0, v0, -0x21

    goto :goto_0

    :cond_1
    or-int/lit8 v0, v0, 0x20

    .line 212
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    return-void
.end method

.method public onActivityCreated()V
    .locals 2

    .line 74
    invoke-super {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->onActivityCreated()V

    .line 78
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->convertStatusBarToOverlay()V

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->isImmersiveReadingMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->setStatusBarVisibility(Landroid/view/View;Z)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getBookmarkManager()Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->mBookmarkToggleCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->registerToggleEventCallback(Lcom/amazon/foundation/IIntCallback;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 497
    invoke-super/range {p0 .. p5}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->onLayout(ZIIII)V

    .line 499
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne p1, v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->layoutLocationSeeker()V

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getUpsellController()Lcom/amazon/nwstd/upsell/UpsellController;

    move-result-object p1

    .line 505
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->replica_nav_bar_frag:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/upsell/UpsellController;->setBannerBottomMargin(I)V

    .line 512
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    if-eqz p1, :cond_2

    .line 513
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->layoutReplicaNavBar(IIII)V

    :cond_2
    return-void
.end method

.method public openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V
    .locals 5

    .line 290
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->closeSoftKeyboard(Landroid/view/View;)V

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isPageViewsTransitionAnimationStillRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 308
    invoke-virtual {p0, v1, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextView(ZZ)V

    return-void

    :cond_2
    if-eqz p2, :cond_4

    .line 317
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object p2

    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-eq p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isPageNumberOnCurrentReplicaView(Lcom/amazon/android/docviewer/mapper/PageIndex;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 320
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->trackCurrentPosition()V

    .line 323
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p2

    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-virtual {p2, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setViewMode(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;)V

    .line 327
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mReplicaAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 332
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz p2, :cond_5

    const/4 v0, 0x4

    .line 333
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    :cond_5
    invoke-virtual {p0, v1, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 338
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isImageViewVisible()Z

    move-result p2

    if-nez p2, :cond_d

    .line 342
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 344
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mTextViewCloseAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 345
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isThumbnailGridViewVisible()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 347
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mAnimationsProvider:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    invoke-virtual {p2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->createCloseGridViewAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    goto :goto_0

    :cond_7
    move-object p2, v0

    :goto_0
    if-eqz p3, :cond_8

    if-eqz p2, :cond_8

    .line 354
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    long-to-int v4, v3

    add-int/lit8 v4, v4, 0x32

    invoke-virtual {v2, v4}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setDelayToLoadImages(I)V

    .line 357
    :cond_8
    sget-object v2, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->SHOW_IMAGEVIEW_WITHOUT_NAVIGATING:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p1, v2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 358
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v2, p1, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->moveToPage(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V

    .line 361
    :cond_9
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showImageView()V

    .line 362
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->enableTouchEvent(Z)V

    if-eqz p3, :cond_c

    .line 366
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 368
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    iget-object p3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCallbackCentral:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object p3, p3, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->closeTextViewAnimationEndCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {p1, p2, v0, p3}, Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;->startAnimation(Landroid/view/animation/Animation;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/ICallback;)V

    goto :goto_1

    .line 369
    :cond_a
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isThumbnailGridViewVisible()Z

    move-result p3

    if-eqz p3, :cond_e

    .line 373
    iget-object p3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    .line 374
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->forceTapToTextTutorial:Z

    .line 377
    :cond_b
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 381
    :cond_c
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCallbackCentral:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->closeTextViewAnimationEndCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 382
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeGridView()V

    goto :goto_1

    .line 385
    :cond_d
    sget-object p2, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->SHOW_IMAGEVIEW_WITHOUT_NAVIGATING:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 386
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p2, p1, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->moveToPage(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V

    .line 387
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getViewPagerPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;)I

    move-result p1

    .line 388
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getDisplayedPositionFromViewPagerPosition(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->curlViewMoveToPage(I)V

    :cond_e
    :goto_1
    return-void
.end method

.method public openTextViewAt(IZZLcom/amazon/android/docviewer/mobi/PeriodicalsBookSearchResult;)V
    .locals 3

    .line 401
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isPageViewsTransitionAnimationStillRunning()Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInGridView()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeGridView()V

    :cond_1
    if-eqz p2, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->trackCurrentPosition()V

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object p2

    sget-object p4, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    const/4 v0, 0x0

    if-eq p2, p4, :cond_3

    .line 418
    invoke-virtual {p0, v0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 421
    :cond_3
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p2

    .line 422
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p4

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-virtual {p4, v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setViewMode(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;)V

    .line 426
    iget-object p4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->accessibilityDelegate:Lcom/amazon/kcp/reader/accessibility/ReaderLayoutAccessibilityDelegate;

    invoke-static {p0, p4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    if-eqz p3, :cond_4

    .line 430
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->enableTouchEvent(Z)V

    :cond_4
    const/4 p4, -0x1

    if-eq p1, p4, :cond_8

    .line 436
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p4

    invoke-virtual {p4}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p4

    .line 437
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p4, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const-string v2, "KindleDocView should not be null !"

    .line 438
    invoke-static {v1, v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :cond_6
    if-eqz p4, :cond_7

    .line 442
    invoke-virtual {p4}, Lcom/amazon/android/docviewer/KindleDocView;->refresh()V

    .line 452
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p4

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone$2;

    invoke-direct {v1, p0, p3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone$2;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;Z)V

    invoke-virtual {p4, v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->registerPageRenderedCallback(Lcom/amazon/foundation/ICallback;)V

    .line 464
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->navigateToPosition(IZ)V

    goto :goto_1

    .line 468
    :cond_8
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextView(Z)V

    .line 472
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    .line 473
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p2

    if-eq p2, p1, :cond_9

    .line 474
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    :cond_9
    return-void
.end method

.method public resume()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->resume()V

    .line 104
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->addReaderGestureHandlerIfNeeded()V

    return-void
.end method

.method public setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 0

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->updateActionBarItems()V

    .line 252
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    return-object p1
.end method

.method public setupPeriodicalCustomButtons(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)V
    .locals 0

    return-void
.end method

.method public showBookmarkList()V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->inflateBookmarkList()Z

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 223
    invoke-interface {v0, v1}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->show(Z)Z

    .line 226
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getVisibleOverlays()I

    move-result v0

    or-int/lit8 v0, v0, 0x40

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x21

    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    return-void
.end method

.method protected updateActionBarItems()V
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public updateGridViewLayout()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/utils/NewsstandUIUtils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 178
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->isImmersiveReadingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->statusBarHeight:I

    sub-int/2addr v0, v1

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 183
    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    invoke-interface {v1, v0}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->setTopMargin(I)V

    :cond_2
    return-void
.end method

.method public updateHeaderActionBarItems()V
    .locals 0

    return-void
.end method

.method protected updateHeaderActionBarTitleColor(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected updateTTSBarColor()V
    .locals 0

    return-void
.end method
