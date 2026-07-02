.class public abstract Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;
.super Lcom/amazon/kcp/reader/BookReaderActivity;
.source "MangaPagerActivity.java"

# interfaces
.implements Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;


# static fields
.field private static final BOOKMARK_TAG:Ljava/lang/String; = "BookmarkToggleFragment"

.field private static final MANGA_PAGER_ACTIVITY:Ljava/lang/String; = "MangaPagerActivity"

.field private static final MANGA_PAGER_ACTIVITY_TIMER:Ljava/lang/String; = "MangaPagerActivityTimer"

.field private static final MANGA_SESSION_TIMER:Ljava/lang/String; = "MangaSessionTimer"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected volatile mangaAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

.field protected mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

.field protected volatile mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    .line 61
    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 175
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    return-object v0
.end method

.method public getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    .line 213
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-object v0
.end method

.method public getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public getMangaViewPager()Lcom/amazon/kindle/mangaviewer/IMangaViewPager;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    return-object v0
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initializeEventHandlers()V
    .locals 6

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    .line 157
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 158
    sget v1, Lcom/amazon/kindle/kmv/R$id;->manga_root_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/MangaLayout;

    .line 159
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;

    invoke-direct {v3, v1}, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 160
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/kmv/R$id;->manga_root_layout:I

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/mangaviewer/MangaLayout;

    invoke-direct {v3, v4, v5}, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;-><init>(Lcom/amazon/android/docviewer/mobi/MangaDocViewer;Lcom/amazon/kindle/mangaviewer/MangaLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 161
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    iget-object v4, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-direct {v3, v4, p0, v1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;-><init>(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Landroid/content/Context;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 162
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/PanEventHandler;

    invoke-direct {v3, v1}, Lcom/amazon/kindle/mangaviewer/PanEventHandler;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 163
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/PageEventHandler;

    invoke-direct {v3, v1}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 164
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    goto :goto_0

    .line 166
    :cond_0
    sget-object v0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->TAG:Ljava/lang/String;

    const-string v1, "MangaTouchListener was null when attempting to initialize event handlers."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected isTypefaceChangeAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected newReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .line 230
    invoke-static {p0}, Lcom/amazon/kindle/mangaviewer/MangaLayout;->newInstance(Lcom/amazon/kcp/reader/BookReaderActivity;)Lcom/amazon/kindle/mangaviewer/MangaLayout;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->onActivityConfigurationChanged(Landroid/content/res/Configuration;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 141
    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->onActivitySizeChanged()V

    .line 145
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 70
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/BookReaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget p1, Lcom/amazon/kindle/kmv/R$id;->manga_root_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/mangaviewer/MangaLayout;

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    instance-of v1, v0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->finish()V

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/MangaLayout;->getMangaViewPager()Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    .line 83
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->onActivityCreate(Lcom/amazon/android/docviewer/mobi/MangaDocViewer;)V

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    .line 88
    :cond_1
    new-instance v0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;-><init>(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    .line 89
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->initializeEventHandlers()V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "BookmarkToggleFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 94
    sget v2, Lcom/amazon/kindle/kmv/R$id;->manga_fragment_container:I

    new-instance v3, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-direct {v3}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 95
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/utils/RTLUtils;->shouldDisplayTextViewOrBookmarkAsRTL(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    .line 98
    sget v1, Lcom/amazon/kindle/kmv/R$id;->manga_fragment_container:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 102
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "MangaPagerActivity"

    const-string v2, "MangaSession"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 103
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->onActivityDestroy()V

    .line 112
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 113
    invoke-super {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 218
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/BookReaderActivity;->onMultiWindowModeChanged(Z)V

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->onActivityModeChanged(Z)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 224
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/redding/ReddingActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 225
    iget-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->onActivityModeChanged(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 127
    invoke-super {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->onPause()V

    .line 128
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MangaSessionTimer"

    const-string v2, "MangaPagerActivityTimer"

    invoke-virtual {v0, v2, v1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-ne v0, v1, :cond_0

    .line 130
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "VirtualPanelSessionTimer"

    const-string v2, "VirtualPanelHandlerTimer"

    invoke-virtual {v0, v2, v1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReaderControllerEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->onReaderControllerEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 118
    invoke-super {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->onResume()V

    .line 119
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MangaSessionTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-ne v0, v1, :cond_0

    .line 121
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "VirtualPanelSessionTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .line 253
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    sget v1, Lcom/amazon/kindle/kmv/R$string;->reader_search_not_available:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 255
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/amazon/kindle/kmv/R$string;->ok:I

    const/4 v3, 0x0

    .line 256
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 257
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return v1
.end method

.method public populateSupportedFeatureSet()V
    .locals 2

    .line 235
    invoke-super {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->populateSupportedFeatureSet()V

    .line 237
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/kmv/R$bool;->support_manga_bookmarks:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->setReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;Z)V

    return-void
.end method

.method public recordSettings()V
    .locals 0

    return-void
.end method

.method protected setTitleVisibility(Z)V
    .locals 0

    return-void
.end method
