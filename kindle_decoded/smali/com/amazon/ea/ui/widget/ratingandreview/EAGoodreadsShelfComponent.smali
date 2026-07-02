.class public Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;
.super Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;
.source "EAGoodreadsShelfComponent.java"


# static fields
.field private static final CURRENT_SHELF_KEY:Ljava/lang/String; = "EAGoodreadsShelfComponent.CURRENT_SHELF_KEY"

.field private static final HAS_INITIALIZED_THIS_END_ACTIONS_SESSION_KEY:Ljava/lang/String; = "EAGoodreadsShelfComponent.HAS_INITIALIZED_THIS_END_ACTIONS_SESSION_KEY"

.field private static final SHOWING_MANUAL_SHELF_EXPERIENCE_KEY:Ljava/lang/String; = "EAGoodreadsShelfComponent.SHOWING_MANUAL_SHELF_EXPERIENCE_KEY"

.field private static final SHOWING_SUBTLE_JIT_ERROR_MESSAGE_KEY:Ljava/lang/String; = "EAGoodreadsShelfComponent.SHOWING_SUBTLE_JIT_ERROR_MESSAGE_KEY"

.field private static final SHOWING_SUBTLE_JIT_OFFLINE_MESSAGE_KEY:Ljava/lang/String; = "EAGoodreadsShelfComponent.SHOWING_SUBTLE_JIT_OFFLINE_MESSAGE_KEY"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.widget.ratingandreview.EAGoodreadsShelfComponent"


# instance fields
.field private hasInitializedThisEndActionsSession:Z

.field private isShowingSubtleJitErrorMessage:Z

.field private isShowingSubtleJitOfflineMessage:Z

.field private jitWasShown:Z

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private subtleJITContainer:Landroid/widget/LinearLayout;

.field private final themedSpinnerBackgroundColor:I

.field private final themedSpinnerSelectedBackgroundColor:I

.field private final themedSpinnerTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;-><init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 72
    iput-boolean p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->isShowingSubtleJitErrorMessage:Z

    .line 73
    iput-boolean p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->isShowingSubtleJitOfflineMessage:Z

    .line 74
    iput-boolean p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->hasInitializedThisEndActionsSession:Z

    .line 75
    iput-boolean p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->jitWasShown:Z

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/ea/R$color;->anyactions_amazon_orange_dark:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->themedSpinnerTextColor:I

    .line 120
    const-class p2, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {p2}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    .line 121
    invoke-interface {p2, p3}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 122
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p2

    goto :goto_0

    .line 125
    :cond_0
    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 127
    :goto_0
    sget-object p3, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p2, p3, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/ea/R$color;->anyactions_spinner_background_color_black:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->themedSpinnerBackgroundColor:I

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/ea/R$color;->anyactions_spinner_selected_background_color_black:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->themedSpinnerSelectedBackgroundColor:I

    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/ea/R$color;->anyactions_spinner_background_color_white:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->themedSpinnerBackgroundColor:I

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/ea/R$color;->anyactions_spinner_selected_background_color_white:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->themedSpinnerSelectedBackgroundColor:I

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)Ljava/util/Map;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->getReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->layoutTutorial(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)Landroid/widget/CompoundButton;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    return-object p0
.end method

.method private buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;
    .locals 9

    .line 384
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->isTutorialEnabled()Z

    move-result v0

    .line 385
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "DisplayedBlockingJIT"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 389
    sget v2, Lcom/amazon/kindle/ea/R$layout;->endactions_autoshelving_tutorial_content:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 391
    iget-object v3, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    const/4 v5, 0x1

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    .line 394
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->blocking_tutorial_pointer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    .line 395
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$color;->startactions_dialog_color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 391
    invoke-static/range {v3 .. v8}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->createInstance(Landroid/view/View;Landroid/view/View;ZIFI)Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    move-result-object v1

    .line 396
    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$2;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$2;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)V

    invoke-virtual {v1, v0}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->setBackButtonListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;)V

    .line 404
    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$3;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$3;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)V

    invoke-virtual {v1, v0}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->setOnDismissListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;)V

    .line 412
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$4;

    invoke-direct {v2, p0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$4;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    const-wide/16 v3, 0x3c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 420
    new-instance v2, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$5;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;Landroid/app/Activity;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    iput-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 432
    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 433
    new-instance v2, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$6;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;Landroid/app/Activity;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    .line 445
    iget-object v3, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 448
    new-instance v3, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$7;

    invoke-direct {v3, p0, v2}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$7;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v1, v3}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->setJitDialogDismissListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;)V

    .line 460
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "JITT"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 462
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "ClickedJITToggle"

    invoke-virtual {v0, v2}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->jitWasShown:Z

    .line 464
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v2, "AnyActionsBlockingJIT"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private displayErrorMessageSubtleJitIfRequired(Landroid/os/Bundle;)V
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->getUpdateFailureThatOccurredForBook(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v3, "EAGoodreadsShelfComponent.SHOWING_SUBTLE_JIT_ERROR_MESSAGE_KEY"

    .line 478
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 481
    :cond_2
    sget p1, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_subtle_jit_message:I

    xor-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->displaySubtleJit(IZ)V

    .line 482
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->setUpdateFailureThatOccurredForBook(Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 483
    iput-boolean v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->isShowingSubtleJitErrorMessage:Z

    .line 485
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "DisplayedErrorSubtleJIT"

    invoke-virtual {p1, v0}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private displayOfflineSubtleJitIfRequired(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string v2, "EAGoodreadsShelfComponent.SHOWING_SUBTLE_JIT_OFFLINE_MESSAGE_KEY"

    .line 494
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 496
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->hasInitializedThisEndActionsSession:Z

    if-nez p1, :cond_2

    .line 497
    :cond_1
    sget p1, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_offline_subtle_jit:I

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->displaySubtleJit(IZ)V

    .line 498
    iput-boolean v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->isShowingSubtleJitOfflineMessage:Z

    .line 500
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "DisplayedOfflineSubtleJIT"

    invoke-virtual {p1, v0}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private displaySubtleJit(IZ)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->subtleJITContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_subtle_jit_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 511
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 512
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->subtleJITContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->displaySubtleJit(Landroid/widget/LinearLayout;Landroid/widget/TextView;Z)V

    return-void
.end method

.method private getReadingStreamsContextMetaData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 534
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 535
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getBaseReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 537
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->didEndActionsOpenAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "InvokedByERL"

    goto :goto_0

    :cond_0
    const-string v1, "InvokedByHamburgerMenu"

    :goto_0
    const-string v2, "WidgetInvokedBy"

    .line 536
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-boolean v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->jitWasShown:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "JitWasShown"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private initiallyUseAutoShelfExperience(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "EAGoodreadsShelfComponent.SHOWING_MANUAL_SHELF_EXPERIENCE_KEY"

    .line 331
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    return v0

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isUpdateShelfServiceCallInProgress()Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 346
    :cond_2
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->didEndActionsOpenAutomatically()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string/jumbo p2, "to-read"

    .line 347
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "currently-reading"

    .line 348
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private isToggleInitiallyChecked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isTutorialEnabled()Z
    .locals 2

    const-string v0, "anyactions.autoshelving"

    const-string v1, "endActionsTutorialEnabled"

    .line 367
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 370
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 372
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private layoutTutorial(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->requestLayout(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static tryCreate(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Ljava/lang/String;)Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;
    .locals 2

    .line 86
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isSocialNetworkBlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 87
    sget-object p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->TAG:Ljava/lang/String;

    const-string p1, "Social Networks are blocked through parental controls; invalidating EAGoodreadsShelfComponent"

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 92
    :cond_0
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->isAutoShelvingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 94
    sget-object p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->TAG:Ljava/lang/String;

    const-string p1, "Autoshelving feature is disabled EAGoodreadsShelfComponent"

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x1

    .line 100
    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v0

    if-nez v0, :cond_4

    .line 102
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 103
    sget-object p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->TAG:Ljava/lang/String;

    const-string p1, "Goodreads info is null; invalidating GoodreadsShelfWidget"

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1

    .line 108
    :cond_4
    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;-><init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const-string v1, "EAGoodreadsShelfComponent.HAS_INITIALIZED_THIS_END_ACTIONS_SESSION_KEY"

    .line 146
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->hasInitializedThisEndActionsSession:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    const-string v1, "EAGoodreadsShelfComponent.CURRENT_SHELF_KEY"

    .line 147
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_1
    sget v1, Lcom/amazon/kindle/ea/R$layout;->endactions_goodreads_shelf:I

    invoke-virtual {p0, p1, p3, v1, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->initialize(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;ILjava/lang/String;)V

    .line 150
    iput-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->subtleJITContainer:Landroid/widget/LinearLayout;

    .line 151
    sget p1, Lcom/amazon/kindle/ea/R$drawable;->anyactions_subtle_jit_background_black:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 153
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/ea/R$drawable;->anyactions_spinner_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    sget p1, Lcom/amazon/kindle/ea/R$drawable;->anyactions_switch_thumb_dark:I

    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->initializeSwitchUi(I)V

    .line 157
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->isToggleInitiallyChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->initiallyUseAutoShelfExperience(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    const-string p2, "AnyActionsRateAndShelveWidget"

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->useAutoShelfExperience()V

    .line 163
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p3, "AutoShelvingJitAskedToBeShown"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    move-result-object p1

    .line 168
    iget-object p3, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$1;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 184
    invoke-direct {p0, p4}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->displayOfflineSubtleJitIfRequired(Landroid/os/Bundle;)V

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->useManualShelfExperience()V

    .line 187
    invoke-direct {p0, p4}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->displayErrorMessageSubtleJitIfRequired(Landroid/os/Bundle;)V

    :goto_0
    if-nez p4, :cond_3

    .line 192
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    .line 193
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->getReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object p3

    .line 192
    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 196
    :cond_3
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    return-object p1
.end method

.method protected getMetadataOrigin()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;
    .locals 1

    .line 573
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->EA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    return-object v0
.end method

.method protected getSpinnerDropDownView(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/widget/TextView;
    .locals 2

    .line 213
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/amazon/kindle/ea/R$layout;->endactions_spinner_dropdown_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    :cond_0
    if-eqz p3, :cond_1

    .line 218
    iget p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->themedSpinnerSelectedBackgroundColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 220
    :cond_1
    iget p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->themedSpinnerBackgroundColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-object v0
.end method

.method protected getSpinnerView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 2

    .line 201
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/amazon/kindle/ea/R$layout;->anyactions_spinner_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget p2, Lcom/amazon/kindle/ea/R$style;->anyactions_amazon_text_large:I

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 206
    iget p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->themedSpinnerTextColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method protected incrementMetric(Ljava/lang/String;)V
    .locals 1

    .line 568
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    return-void
.end method

.method protected initMetrics()V
    .locals 2

    .line 547
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "AutoShelvingPerformed"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 548
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ManualShelvingPerformed"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 549
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ManualShelvingCurrentlyReading"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 550
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ManualShelvingWantToRead"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 551
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ManualShelvingRead"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 552
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ManualShelvingRemove"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 553
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DisplayedAutoShelfExperience"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 554
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DisplayedManualShelfExperience"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    return-void
.end method

.method protected isViewThemed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected logMetricsForCurrentExperience()V
    .locals 3

    .line 559
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 560
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "DisplayedAutoShelfExperience"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    goto :goto_0

    .line 562
    :cond_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "DisplayedManualShelfExperience"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onDestroy(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result p1

    const-string v0, "AnyActionsRateAndShelveWidget"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const-string/jumbo v2, "read"

    invoke-virtual {p0, v2, p1, v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateShelf(Ljava/lang/String;ZZ)V

    .line 293
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "AutoShelvingPerformed"

    invoke-virtual {p1, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->getReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object p1

    const-string v1, "ShelfAction"

    .line 296
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "PerformAutoShelving"

    invoke-interface {v1, v0, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 301
    :cond_0
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    .line 302
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->getReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object v1

    .line 301
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected onGoodreadsProfileEventReceived(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
    .locals 3

    .line 228
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getShelf()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->isGetRequest:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "read"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->useManualShelfExperience()V

    .line 240
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_widget_goodreads_shelf_marked_as_read_toast:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->handleFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->unsubscribeFromShelfManagerUpdates()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 261
    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->hasInitializedThisEndActionsSession:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->subscribeToShelfManagerUpdates()V

    .line 268
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->getUpdateFailureThatOccurredForBook(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getLocalShelfFromShelfManager()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->handleUpdateFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->subscribeToShelfManagerUpdatesAndFetchRemoteShelf()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->hasInitializedThisEndActionsSession:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "EAGoodreadsShelfComponent.SHOWING_MANUAL_SHELF_EXPERIENCE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->isShowingSubtleJitErrorMessage:Z

    const-string v1, "EAGoodreadsShelfComponent.SHOWING_SUBTLE_JIT_ERROR_MESSAGE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->isShowingSubtleJitOfflineMessage:Z

    const-string v1, "EAGoodreadsShelfComponent.SHOWING_SUBTLE_JIT_OFFLINE_MESSAGE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->hasInitializedThisEndActionsSession:Z

    const-string v1, "EAGoodreadsShelfComponent.HAS_INITIALIZED_THIS_END_ACTIONS_SESSION_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EAGoodreadsShelfComponent.CURRENT_SHELF_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected recordMetricsForShelfSelectionMade(Ljava/lang/String;)V
    .locals 5

    .line 517
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ManualShelvingPerformed"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 518
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getManualShelvingMetricsCounterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->getReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object v0

    const-string v2, "ShelfAction"

    .line 521
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    const-string v3, "AnyActionsRateAndShelveWidget"

    const-string v4, "PerformManualShelving"

    invoke-interface {v2, v3, v4, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 526
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getEndActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object v0

    .line 527
    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getManualShelvingMetricsCounterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
