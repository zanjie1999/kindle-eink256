.class public Lcom/amazon/startactions/ui/StartActionsOverlayController;
.super Ljava/lang/Object;
.source "StartActionsOverlayController.java"

# interfaces
.implements Lcom/amazon/startactions/ui/IAnyActionsUIController;


# static fields
.field private static final ACCESSIBILITY_DELAY_MS:J = 0x2eeL

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.StartActionsOverlayController"


# instance fields
.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private isShowing:Z

.field private final keyEventListener:Lcom/amazon/startactions/ui/KeyEventListener;

.field private layout:Lcom/amazon/startactions/ui/layout/Layout;

.field private final readerActivity:Landroid/app/Activity;

.field private final startActionsCustomTutorialHandler:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;)V
    .locals 4

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing:Z

    .line 87
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v3, "readerUIManager.getCurrentActivity() returned null, cannot initialize Start Actions Overlay Controller."

    .line 91
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 95
    instance-of v1, v1, Landroid/app/Activity;

    const-string v2, "Overlay Controller requires that readerUIManager.getCurrentActivity returns an activity, but it did not!"

    invoke-static {v1, v2}, Lcom/amazon/ea/util/Validate;->checkArgument(ZLjava/lang/String;)V

    .line 98
    iput-object p2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->startActionsCustomTutorialHandler:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;

    .line 99
    iput-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 101
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    .line 102
    new-instance p2, Lcom/amazon/startactions/ui/KeyEventListener;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/amazon/startactions/ui/KeyEventListener;-><init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->keyEventListener:Lcom/amazon/startactions/ui/KeyEventListener;

    .line 103
    iput-boolean v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Landroid/app/Activity;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Lcom/amazon/startactions/ui/KeyEventListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->keyEventListener:Lcom/amazon/startactions/ui/KeyEventListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Lcom/amazon/startactions/ui/layout/Layout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/startactions/ui/StartActionsOverlayController;Lcom/amazon/kindle/krx/content/IBook;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->createHeader(Lcom/amazon/kindle/krx/content/IBook;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/startactions/ui/StartActionsOverlayController;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing:Z

    return p1
.end method

.method private createHeader(Lcom/amazon/kindle/krx/content/IBook;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 516
    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_header:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 519
    sget p3, Lcom/amazon/kindle/ea/R$id;->header_title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 520
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_feature_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 525
    sget p3, Lcom/amazon/kindle/ea/R$id;->header_subtitle:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 526
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/layout/Layout;->providesHeaderInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 527
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 529
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    :goto_0
    sget p3, Lcom/amazon/kindle/ea/R$id;->header_close_button:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 535
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_header_close_button:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 536
    invoke-static {p3, v0}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 539
    new-instance v0, Lcom/amazon/startactions/ui/StartActionsOverlayController$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/startactions/ui/StartActionsOverlayController$5;-><init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 556
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    new-instance p1, Lcom/amazon/startactions/ui/StartActionsOverlayController$6;

    invoke-direct {p1, p0, p3}, Lcom/amazon/startactions/ui/StartActionsOverlayController$6;-><init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 566
    sget p1, Lcom/amazon/kindle/ea/R$id;->header_divider:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 567
    sget p3, Lcom/amazon/kindle/ea/R$array;->startactions_header_divider_line:I

    .line 568
    invoke-static {p3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 567
    invoke-static {p1, p3}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 569
    sget p1, Lcom/amazon/kindle/ea/R$array;->startactions_header_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2
.end method


# virtual methods
.method public dismissOverlay(Ljava/lang/String;)V
    .locals 1

    .line 332
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 333
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 334
    sget-object p1, Lcom/amazon/startactions/ui/StartActionsOverlayController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "overlay controller was not showing on dismiss attempt. ignoring."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 339
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 340
    sget-object p1, Lcom/amazon/startactions/ui/StartActionsOverlayController;->TAG:Ljava/lang/String;

    const-string v0, "dismissing overlay controller."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->hideOverlay()V

    .line 343
    iget-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/layout/Layout;->onUiDismiss()V

    .line 344
    iget-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->startActionsCustomTutorialHandler:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;

    invoke-virtual {p1}, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;->dismissCallBack()V

    .line 346
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "StartActions"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSessionMetric()Lcom/amazon/startactions/metrics/Metric;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetPlacements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/layout/Layout;->getWidgetPlacements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;
    .locals 4

    .line 586
    new-instance v0, Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    iget-object v1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    invoke-interface {v1}, Lcom/amazon/startactions/ui/layout/Layout;->getRefTagSuffix()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    invoke-interface {v2}, Lcom/amazon/startactions/ui/layout/Layout;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "r_sa"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public hideOverlay()V
    .locals 2

    .line 353
    iget-boolean v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing:Z

    if-nez v0, :cond_1

    .line 354
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    sget-object v0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->TAG:Ljava/lang/String;

    const-string v1, "The Start Actions overlay is already closed."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->keyEventListener:Lcom/amazon/startactions/ui/KeyEventListener;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/KeyEventListener;->unregister()V

    .line 362
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 363
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    sget-object v0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->TAG:Ljava/lang/String;

    const-string v1, "Overlay has already been destroyed with old activity"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 369
    :cond_3
    new-instance v0, Lcom/amazon/startactions/ui/StartActionsOverlayController$3;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/StartActionsOverlayController$3;-><init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;)V

    invoke-static {v0}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 395
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->ensureMaxCacheSize()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 500
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    sget-object v0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult.\tresultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\trequestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/startactions/ui/layout/Layout;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onReaderActivityPause()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0}, Lcom/amazon/startactions/ui/layout/Layout;->onReaderActivityPause()V

    :cond_0
    return-void
.end method

.method public onReaderActivityResume()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0}, Lcom/amazon/startactions/ui/layout/Layout;->onReaderActivityResume()V

    :cond_0
    return-void
.end method

.method public refreshUI()V
    .locals 2

    .line 421
    iget-boolean v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing:Z

    if-nez v0, :cond_1

    .line 422
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    sget-object v0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->TAG:Ljava/lang/String;

    const-string v1, "Asked to refreshUI when not showing.  Since this class refreshes always refreshes when it does show, will do nothing."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->showOverlay()Z

    return-void
.end method

.method public repositionOverlay()V
    .locals 2

    .line 288
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NONLINEAR_NAVIGATION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 290
    sget-object v0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->TAG:Ljava/lang/String;

    const-string v1, "Stored reader activity is not the reader\'s current activity. Ignoring reposition overlay event"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 294
    :cond_0
    new-instance v0, Lcom/amazon/startactions/ui/StartActionsOverlayController$2;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/StartActionsOverlayController$2;-><init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;)V

    invoke-static {v0}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public requestAccessibilityFocus()V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    const-string v1, "accessibility"

    .line 438
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 439
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    sget v2, Lcom/amazon/kindle/ea/R$id;->startactions_content_container:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return-void

    .line 446
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 448
    new-instance v0, Lcom/amazon/startactions/ui/StartActionsOverlayController$4;

    invoke-direct {v0, p0, v1}, Lcom/amazon/startactions/ui/StartActionsOverlayController$4;-><init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;Landroid/view/ViewGroup;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setLayout(Lcom/amazon/startactions/ui/layout/Layout;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    return-void
.end method

.method public showOverlay()Z
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 125
    sget-object v0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->TAG:Ljava/lang/String;

    const-string v1, "Stored reader activity is not the reader\'s current activity. Ignoring show overlay event"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 130
    :cond_0
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    sget-object v0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->TAG:Ljava/lang/String;

    const-string v1, "Book purchases are blocked; vetoing Start Actions overlay"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 135
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    sget-object v0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing:Z

    if-eqz v1, :cond_2

    const-string v1, "Refreshing Start Actions overlay."

    goto :goto_0

    :cond_2
    const-string v1, "Showing Start Actions overlay."

    :goto_0
    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/amazon/ea/EndActionsPlugin;->setCurrentActivity(Landroid/app/Activity;)V

    .line 140
    invoke-static {}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->initializeMetadataSA()V

    .line 143
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->createLayout(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v3, "AllLayoutsRejected"

    invoke-static {v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 147
    sget-object v0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->TAG:Ljava/lang/String;

    const-string v1, "No layout resolved; will not show Start Actions."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 152
    :cond_4
    invoke-interface {v0}, Lcom/amazon/startactions/ui/layout/Layout;->loadData()V

    .line 157
    new-instance v0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;

    invoke-direct {v0, p0, p0}, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;-><init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;Lcom/amazon/startactions/ui/IAnyActionsUIController;)V

    invoke-static {v0}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    return v1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController;->readerActivity:Landroid/app/Activity;

    invoke-static {p1, p2, p0, v0}, Lcom/amazon/startactions/ui/OverlayDummyActivity;->startActivityForResultWithDummy(Landroid/content/Intent;ILcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/app/Activity;)V

    return-void
.end method
