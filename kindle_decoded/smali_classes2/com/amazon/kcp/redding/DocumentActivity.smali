.class public abstract Lcom/amazon/kcp/redding/DocumentActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "DocumentActivity.java"

# interfaces
.implements Lcom/amazon/kindle/fragment/KindleDocViewerFragment$KindleDocViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;
    }
.end annotation


# static fields
.field private static final BOOK_OPEN_PUBLISH_LONG_DELAY_IN_MILLIS:I = 0xbb8

.field private static final BOOK_OPEN_PUBLISH_SHORT_DELAY_IN_MILLIS:I = 0x3e8

.field public static final EXTRA_RESTART_ON_SETTINGS_CHANGE:Ljava/lang/String; = "settingsChange"

.field public static final EXTRA_RESTART_VIEW_OPTIONS_VISIBLE:Ljava/lang/String; = "onRestartViewOptionsVisible"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final allowScreenDimRunnable:Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;

.field private final completionLatch:Ljava/util/concurrent/CountDownLatch;

.field protected docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private volatile inStateSaving:Z

.field protected messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field protected onCloseListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;

.field protected onFocusChangeListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;

.field private pageTurnListener:Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

.field protected readerController:Lcom/amazon/kcp/reader/ReaderController;

.field private resumedAfterCreate:Z

.field private final screenDimHelperHandler:Landroid/os/Handler;

.field protected shouldDelayLoadExtraAsset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/redding/DocumentActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 73
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->screenDimHelperHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->completionLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->inStateSaving:Z

    .line 80
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayLoadExtraAsset:Z

    .line 101
    new-instance v1, Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;-><init>(Lcom/amazon/kcp/redding/DocumentActivity$1;)V

    iput-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;

    .line 106
    new-instance v1, Lcom/amazon/kcp/redding/DocumentActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/DocumentActivity$1;-><init>(Lcom/amazon/kcp/redding/DocumentActivity;)V

    iput-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->onFocusChangeListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;

    .line 116
    new-instance v1, Lcom/amazon/kcp/redding/DocumentActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/DocumentActivity$2;-><init>(Lcom/amazon/kcp/redding/DocumentActivity;)V

    iput-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->onCloseListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;

    .line 129
    new-instance v1, Lcom/amazon/kcp/redding/DocumentActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/DocumentActivity$3;-><init>(Lcom/amazon/kcp/redding/DocumentActivity;)V

    iput-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->pageTurnListener:Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 163
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->resumedAfterCreate:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/kcp/redding/DocumentActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/redding/DocumentActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->delayScreenDim()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/redding/DocumentActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->resumedAfterCreate:Z

    return p0
.end method

.method static synthetic access$302(Lcom/amazon/kcp/redding/DocumentActivity;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->resumedAfterCreate:Z

    return p1
.end method

.method private delayScreenDim()V
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->screenDimHelperHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;->root:Landroid/view/Window;

    .line 335
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->screenDimHelperHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$integer;->dim_screen_time_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 344
    :cond_0
    sget-object v0, Lcom/amazon/kcp/redding/DocumentActivity;->TAG:Ljava/lang/String;

    const-string v1, "failed to set FLAG_KEEP_SCREEN_ON"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onActivityResumed()V
    .locals 4

    .line 376
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->delayScreenDim()V

    .line 378
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/amazon/kcp/redding/DocumentActivity$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/DocumentActivity$5;-><init>(Lcom/amazon/kcp/redding/DocumentActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onActivityStarted()V
    .locals 5

    .line 371
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/reader/ReaderControllerEvent;

    sget-object v2, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_READY:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/reader/ReaderControllerEvent;-><init>(Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    const/16 v0, 0x3e8

    .line 398
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/redding/DocumentActivity;->updateBookAccess(I)V

    .line 399
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onActivityStarted()V

    .line 400
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onActivityResumed()V

    return-void
.end method

.method public getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method protected abstract getRootView()Landroid/view/View;
.end method

.method protected getThemeForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I
    .locals 0

    .line 254
    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->getThemeForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I

    move-result p1

    return p1
.end method

.method protected getThemeResourceId(Lcom/amazon/kindle/krx/theme/Theme;)I
    .locals 1

    .line 406
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->supportsThemeChangeForFixedFormat()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->getThemeForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I

    move-result p1

    return p1

    .line 409
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ThemeActivity;->getThemeResourceId(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result p1

    return p1
.end method

.method protected abstract isTypefaceChangeAllowed()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 175
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 176
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    iput-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    const-string v0, "ReaderController.bindToCurrentBook(Activity)"

    const/4 v1, 0x1

    .line 179
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 180
    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v2, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v2, 0x0

    .line 181
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/amazon/kcp/redding/DocumentActivity;->TAG:Ljava/lang/String;

    const-string v1, "No book for DocumentActivity; aborting."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "DocumentActivity"

    const-string v1, "docViewerNullInOnCreate"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/redding/DocumentActivity;->pageTurnListener:Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    invoke-interface {v0, v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 200
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$bool;->set_theme_based_on_color_mode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 201
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/redding/DocumentActivity;->getThemeForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 206
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/krl/R$bool;->delay_load_extra_asset_for_book_open:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayLoadExtraAsset:Z

    .line 210
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayExecuted()Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0xbb8

    .line 211
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->updateBookAccess(I)V

    .line 214
    :cond_3
    iput-boolean v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->resumedAfterCreate:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 300
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 302
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->pageTurnListener:Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;->root:Landroid/view/Window;

    .line 306
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->tearDownSearchView()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 278
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->screenDimHelperHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 267
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->inStateSaving:Z

    .line 271
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayExecuted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onActivityResumed()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 259
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStart()V

    .line 260
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayExecuted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onActivityStarted()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 291
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->saveCurrentBookState()V

    .line 292
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStop()V

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;->root:Landroid/view/Window;

    .line 295
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->allowScreenDimRunnable:Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/DocumentActivity$ScreenDimRunnable;->run()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 312
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->delayScreenDim()V

    return-void
.end method

.method protected saveCurrentBookState()V
    .locals 0

    return-void
.end method

.method protected abstract setTitleVisibility(Z)V
.end method

.method protected setupSearchView(Landroid/view/Menu;)V
    .locals 3

    .line 322
    sget v0, Lcom/amazon/kindle/krl/R$id;->menuitem_search:I

    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity;->onCloseListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;

    iget-object v2, p0, Lcom/amazon/kcp/redding/DocumentActivity;->onFocusChangeListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amazon/kcp/redding/ReddingActivity;->setupSearchView(Landroid/view/Menu;ILcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V

    return-void
.end method

.method public shouldDelayExecuted()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayLoadExtraAsset:Z

    return v0
.end method

.method protected updateBookAccess(I)V
    .locals 4

    .line 222
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/redding/DocumentActivity$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/DocumentActivity$4;-><init>(Lcom/amazon/kcp/redding/DocumentActivity;)V

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
