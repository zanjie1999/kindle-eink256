.class public Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;
.super Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;
.source "GoodreadsShelfWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SAGoodreadsShelfComponent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;,
        Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$BlockingTutorialDialogListener;
    }
.end annotation


# instance fields
.field private autoShelfSwitchOnCheckedChangeListener:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

.field private blockingJitWasShown:Z

.field private volatile blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

.field private dividerView:Landroid/view/View;

.field private fosSwitchDefaultThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private fosSwitchDefaultTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private informationalSubtleJitWasShown:Z

.field private final isSensitive:Z

.field private startActionsAutoShelvingBlockingTutorialManager:Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

.field private subtleJitContainer:Landroid/widget/LinearLayout;

.field private final subtleJitController:Lcom/amazon/startactions/jit/SubtleJITController;

.field private themedSpinnerBackgroundColor:I

.field private themedSpinnerSelectedBackgroundColor:I

.field private themedSpinnerTextColor:I

.field private themedTextColor:I

.field private tutorialDialogListener:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$BlockingTutorialDialogListener;

.field private wasShowingBlockingOverlayWhenPaused:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;Ljava/lang/String;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;-><init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V

    .line 260
    new-instance p1, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$1;)V

    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->autoShelfSwitchOnCheckedChangeListener:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

    .line 267
    iput-object p4, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->startActionsAutoShelvingBlockingTutorialManager:Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    .line 268
    new-instance p1, Lcom/amazon/startactions/jit/SubtleJITController;

    invoke-direct {p1}, Lcom/amazon/startactions/jit/SubtleJITController;-><init>()V

    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->subtleJitController:Lcom/amazon/startactions/jit/SubtleJITController;

    .line 269
    iget-boolean p1, p2, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->isSensitive:Z

    iput-boolean p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->isSensitive:Z

    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->informationalSubtleJitWasShown:Z

    .line 271
    iput-boolean p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->blockingJitWasShown:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Ljava/util/Map;
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->getReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Landroid/widget/CompoundButton;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->removeTutorial()V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Lcom/amazon/startactions/jit/SubtleJITController;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->subtleJitController:Lcom/amazon/startactions/jit/SubtleJITController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->resetAutoShelfSwitchThemeOnTutorialDismissIfNecessary()V

    return-void
.end method

.method static synthetic access$402(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)Lcom/amazon/startactions/jit/BlockingTutorialFragment;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->layoutTutorial()V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->startActionsAutoShelvingBlockingTutorialManager:Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->notifyTutorialDialogDismissListener()V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    return-object p0
.end method

.method private addToggleChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 674
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->autoShelfSwitchOnCheckedChangeListener:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

    invoke-virtual {v0, p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;->addListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method private buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;
    .locals 7

    .line 697
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Subsystem for Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 698
    :goto_0
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_autoshelving_blocking_tutorial_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    .line 701
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/ea/R$dimen;->blocking_tutorial_pointer_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    .line 702
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/amazon/kindle/ea/R$color;->startactions_dialog_color_white:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v2, v0

    .line 699
    invoke-static/range {v1 .. v6}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->createInstance(Landroid/view/View;Landroid/view/View;ZIFI)Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    move-result-object v1

    .line 703
    new-instance v2, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$7;

    invoke-direct {v2, p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$7;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V

    invoke-virtual {v1, v2}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->setBackButtonListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;)V

    .line 720
    sget v2, Lcom/amazon/kindle/ea/R$id;->button_enable_autoshelving:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 721
    new-instance v3, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$8;

    invoke-direct {v3, p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$8;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    sget v2, Lcom/amazon/kindle/ea/R$id;->button_disable_autoshelving:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 739
    new-instance v2, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$9;

    invoke-direct {v2, p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$9;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->autoShelfSwitchOnCheckedChangeListener:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

    new-instance v2, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$10;

    invoke-direct {v2, p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$10;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V

    invoke-virtual {v0, v2}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;->addListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 771
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 772
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "JITT"

    .line 773
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 774
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 775
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v2, "AnyActionsBlockingJIT"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    return-object v1
.end method

.method private canDisplayBlockingJIT()Z
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->initiallyUseAutoShelfExperience(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->startActionsAutoShelvingBlockingTutorialManager:Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    .line 543
    invoke-virtual {v0}, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canDisplaySubtleJIT()Z
    .locals 1

    .line 553
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->initiallyUseAutoShelfExperience(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private displayErrorMessageSubtleJitIfRequired()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->getUpdateFailureThatOccurredForBook(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 626
    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_subtle_jit_message:I

    invoke-direct {p0, v0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->displaySubtleJit(I)V

    .line 627
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->setUpdateFailureThatOccurredForBook(Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 629
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "DisplayedErrorSubtleJIT"

    .line 630
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private displayInformationalSubtleJitIfRequired(Lcom/amazon/startactions/jit/SubtleJitType;)V
    .locals 3

    .line 596
    sget-object v0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$2;->$SwitchMap$com$amazon$startactions$jit$SubtleJitType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return-void

    .line 607
    :cond_0
    sget v0, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_disabled_subtle_jit:I

    goto :goto_0

    .line 603
    :cond_1
    sget v0, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_subtle_jit:I

    goto :goto_0

    .line 598
    :cond_2
    sget v0, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_subtle_jit:I

    .line 599
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->subtleJitController:Lcom/amazon/startactions/jit/SubtleJITController;

    invoke-virtual {v2}, Lcom/amazon/startactions/jit/SubtleJITController;->onSensitiveJITWasShown()V

    .line 614
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->displaySubtleJit(I)V

    .line 615
    iput-boolean v1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->informationalSubtleJitWasShown:Z

    .line 617
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 618
    iget-object p1, p1, Lcom/amazon/startactions/jit/SubtleJitType;->metricName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method private displayOfflineSubtleJit()V
    .locals 2

    .line 638
    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_offline_subtle_jit:I

    invoke-direct {p0, v0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->displaySubtleJit(I)V

    .line 640
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "DisplayedOfflineSubtleJIT"

    .line 641
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method private displaySubtleJit(I)V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->dividerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->subtleJitContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/amazon/kindle/ea/R$id;->startactions_subtle_jit_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 653
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 654
    iget p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->themedTextColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->subtleJitContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->displaySubtleJit(Landroid/widget/LinearLayout;Landroid/widget/TextView;Z)V

    return-void
.end method

.method private getIfInformationalSubtleJitWasShown()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->informationalSubtleJitWasShown:Z

    return v0
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

    .line 846
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 847
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getBaseReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 849
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->didStartActionsOpenAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "InvokedByBookOpen"

    goto :goto_0

    :cond_0
    const-string v1, "InvokedByHamburgerMenu"

    :goto_0
    const-string v2, "WidgetInvokedBy"

    .line 848
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    iget-boolean v1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->isSensitive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IsSensitive"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->getIfInformationalSubtleJitWasShown()Z

    move-result v1

    .line 856
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "SubtleJitWasShown"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    iget-boolean v1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->blockingJitWasShown:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "JitWasShown"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getSubtleJITType()Lcom/amazon/startactions/jit/SubtleJitType;
    .locals 2

    .line 577
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->canDisplaySubtleJIT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    sget-object v0, Lcom/amazon/startactions/jit/SubtleJitType;->NONE:Lcom/amazon/startactions/jit/SubtleJitType;

    return-object v0

    .line 582
    :cond_0
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->canDisplayBlockingJIT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    sget-object v0, Lcom/amazon/startactions/jit/SubtleJitType;->NONE:Lcom/amazon/startactions/jit/SubtleJitType;

    return-object v0

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->subtleJitController:Lcom/amazon/startactions/jit/SubtleJITController;

    iget-boolean v1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->isSensitive:Z

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/jit/SubtleJITController;->getSubtleJITType(Z)Lcom/amazon/startactions/jit/SubtleJitType;

    move-result-object v0

    return-object v0
.end method

.method private initializeSubtleJITController()V
    .locals 3

    .line 560
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->canDisplaySubtleJIT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->canDisplayBlockingJIT()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->subtleJitController:Lcom/amazon/startactions/jit/SubtleJITController;

    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->isToggleInitiallyChecked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->isSensitive:Z

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/jit/SubtleJITController;->onAutoShelfExperienceWasShown(ZZ)V

    return-void
.end method

.method private isToggleInitiallyChecked()Z
    .locals 1

    .line 527
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->isStartActionsAutoShelvingPreferred()Z

    move-result v0

    return v0
.end method

.method private layoutTutorial()V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->requestLayout(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private lightenAutoShelfSwitchForTutorialIfNecessary()V
    .locals 2

    .line 874
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-ne v0, v1, :cond_0

    .line 875
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 876
    check-cast v0, Landroid/widget/Switch;

    .line 879
    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->fosSwitchDefaultThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 880
    invoke-virtual {v0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->fosSwitchDefaultTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 882
    sget v1, Lcom/amazon/kindle/ea/R$drawable;->startactions_switch_thumb_jit:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setThumbResource(I)V

    .line 883
    sget v1, Lcom/amazon/kindle/ea/R$drawable;->startactions_switch_track_jit:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTrackResource(I)V

    :cond_0
    return-void
.end method

.method private notifyTutorialDialogDismissListener()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->tutorialDialogListener:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$BlockingTutorialDialogListener;

    if-eqz v0, :cond_1

    .line 792
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$BlockingTutorialDialogListener;->onTutorialDismiss(Z)V

    :cond_1
    return-void
.end method

.method private removeTutorial()V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 782
    iput-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    .line 784
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsBlockingJIT"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    .line 786
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->notifyTutorialDialogDismissListener()V

    :cond_0
    return-void
.end method

.method private resetAutoShelfSwitchThemeOnTutorialDismissIfNecessary()V
    .locals 2

    .line 893
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-ne v0, v1, :cond_1

    .line 894
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 895
    check-cast v0, Landroid/widget/Switch;

    .line 897
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->fosSwitchDefaultThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 898
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 900
    :cond_0
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->fosSwitchDefaultTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 901
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private setOnTutorialDismissListener(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$BlockingTutorialDialogListener;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->tutorialDialogListener:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$BlockingTutorialDialogListener;

    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 284
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->themedTextColor:I

    .line 285
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color_default:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->themedSpinnerTextColor:I

    .line 286
    sget v0, Lcom/amazon/kindle/ea/R$array;->anyactions_spinner_background_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->themedSpinnerBackgroundColor:I

    .line 287
    sget v0, Lcom/amazon/kindle/ea/R$array;->anyactions_spinner_selected_background_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->themedSpinnerSelectedBackgroundColor:I

    .line 289
    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_goodreads_shelf:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->initialize(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;ILjava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->subscribeToShelfManagerUpdatesAndFetchRemoteShelf()V

    .line 292
    iput-object p3, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->dividerView:Landroid/view/View;

    .line 293
    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->subtleJitContainer:Landroid/widget/LinearLayout;

    .line 294
    sget p1, Lcom/amazon/kindle/ea/R$array;->anyactions_subtle_jit_background:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->manualShelfPrompt:Landroid/widget/TextView;

    iget p2, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->themedTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfPrompt:Landroid/widget/TextView;

    iget p2, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->themedTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updatingShelfText:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/ea/R$array;->startactions_text_secondary_color:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/ea/R$drawable;->anyactions_spinner_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    sget p1, Lcom/amazon/kindle/ea/R$array;->anyactions_switch_thumb:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->initializeSwitchUi(I)V

    .line 302
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->isToggleInitiallyChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 303
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->autoShelfSwitchOnCheckedChangeListener:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 304
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->autoShelfSwitchOnCheckedChangeListener:Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

    new-instance p2, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$1;

    invoke-direct {p2, p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$1;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V

    invoke-virtual {p1, p2}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;->addListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 313
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->canDisplayBlockingJIT()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 314
    new-instance p1, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$2;

    invoke-direct {p1, p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$2;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V

    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->setOnTutorialDismissListener(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$BlockingTutorialDialogListener;)V

    .line 323
    :cond_0
    new-instance p1, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$3;

    invoke-direct {p1, p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$3;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V

    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->addToggleChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 330
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->initiallyUseAutoShelfExperience(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->useAutoShelfExperience()V

    .line 334
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "AnyActionsAutoShelvingWidget"

    const-string p3, "AutoShelvingJitAskedToBeShown"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string p2, "DisplayedBlockingJIT"

    .line 339
    invoke-virtual {p1, p2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 342
    iget-object p3, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->startActionsAutoShelvingBlockingTutorialManager:Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    invoke-virtual {p3}, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->lightenAutoShelfSwitchForTutorialIfNecessary()V

    .line 344
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    .line 347
    iget-object p3, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    new-instance p4, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$4;

    invoke-direct {p4, p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$4;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;)V

    invoke-virtual {p3, p4}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->setJitDialogDismissListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;)V

    .line 353
    iget-object p3, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    .line 354
    iget-object p4, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget v0, Lcom/amazon/kindle/ea/R$id;->holder_for_tutorial:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 355
    invoke-virtual {p4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p4

    new-instance v0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$5;

    invoke-direct {v0, p0, p3}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$5;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;Landroid/app/Activity;)V

    invoke-virtual {p4, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 366
    iget-object p4, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p4

    new-instance v0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$6;

    invoke-direct {v0, p0, p3}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent$6;-><init>(Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;Landroid/app/Activity;)V

    invoke-virtual {p4, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 p3, 0x1

    .line 378
    iput-boolean p3, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->blockingJitWasShown:Z

    .line 379
    invoke-virtual {p1, p2, p3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string p2, "ClickedJITToggle"

    .line 380
    invoke-virtual {p1, p2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string p2, "ClickedJITEnableButton"

    .line 381
    invoke-virtual {p1, p2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string p2, "ClickedJITDisableButton"

    .line 382
    invoke-virtual {p1, p2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string p2, "ClickedJITBackButton"

    .line 383
    invoke-virtual {p1, p2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 386
    :cond_1
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 387
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->initializeSubtleJITController()V

    .line 388
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->getSubtleJITType()Lcom/amazon/startactions/jit/SubtleJitType;

    move-result-object p1

    .line 389
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->displayInformationalSubtleJitIfRequired(Lcom/amazon/startactions/jit/SubtleJitType;)V

    goto :goto_0

    .line 391
    :cond_2
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->displayOfflineSubtleJit()V

    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->useManualShelfExperience()V

    .line 395
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->displayErrorMessageSubtleJitIfRequired()V

    .line 398
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->view:Landroid/view/View;

    return-object p1
.end method

.method protected getMetadataOrigin()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;
    .locals 1

    .line 864
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->SA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    return-object v0
.end method

.method protected getSpinnerDropDownView(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/widget/TextView;
    .locals 2

    .line 415
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_spinner_dropdown_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 419
    :cond_0
    iget p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->themedTextColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p3, :cond_1

    .line 421
    iget p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->themedSpinnerSelectedBackgroundColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 423
    :cond_1
    iget p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->themedSpinnerBackgroundColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-object v0
.end method

.method protected getSpinnerView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 2

    .line 403
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 405
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/amazon/kindle/ea/R$layout;->anyactions_spinner_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget p2, Lcom/amazon/kindle/ea/R$style;->anyactions_amazon_text_small:I

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 408
    iget p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->themedSpinnerTextColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method protected incrementMetric(Ljava/lang/String;)V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 839
    invoke-virtual {v0, p1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method protected initMetrics()V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "AutoShelvingPerformed"

    .line 799
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v1, "ManualShelvingPerformed"

    .line 800
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v1, "ManualShelvingCurrentlyReading"

    .line 801
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v1, "ManualShelvingWantToRead"

    .line 802
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v1, "ManualShelvingRead"

    .line 803
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v1, "ManualShelvingRemove"

    .line 804
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v1, "DisplayedManualShelfExperience"

    .line 805
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v1, "DisplayedAutoShelfExperience"

    .line 806
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    return-void
.end method

.method protected initiallyUseAutoShelfExperience(Ljava/lang/String;)Z
    .locals 3

    .line 506
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 508
    invoke-static {}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "currentBook is null in GoodreadsShelfWidget"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 512
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v2, :cond_1

    return v1

    .line 517
    :cond_1
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->didStartActionsOpenAutomatically()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "none"

    .line 518
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "to-read"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected isViewThemed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected logMetricsForCurrentExperience()V
    .locals 3

    .line 827
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 828
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "DisplayedAutoShelfExperience"

    .line 829
    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v1, "DisplayedManualShelfExperience"

    .line 831
    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 4

    .line 446
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->unsubscribeFromShelfManagerUpdates()V

    .line 448
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "currently-reading"

    invoke-virtual {p0, v2, v0, v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateShelf(Ljava/lang/String;ZZ)V

    .line 451
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->startActionsAutoShelvingBlockingTutorialManager:Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    invoke-virtual {v0}, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;->noticeUserInteraction()V

    .line 453
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "AutoShelvingPerformed"

    .line 454
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->getReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ShelfAction"

    .line 457
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "AnyActionsAutoShelvingWidget"

    const-string v3, "PerformAutoShelving"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected onGoodreadsProfileEventReceived(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
    .locals 2

    .line 431
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getShelf()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    .line 437
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->handleFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V

    :cond_1
    return-void
.end method

.method public onReaderActivityPause()V
    .locals 1

    .line 469
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isBlockingOverlayShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->wasShowingBlockingOverlayWhenPaused:Z

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->toggleBlockingOverlay(Z)V

    .line 471
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onReaderActivityResume()V
    .locals 2

    .line 480
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 482
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->isUpdateShelfServiceCallInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-boolean v1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->wasShowingBlockingOverlayWhenPaused:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 484
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->toggleBlockingOverlay(Z)V

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->toggleUpdatingView(Z)V

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->getUpdateFailureThatOccurredForBook(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object v0

    .line 492
    invoke-virtual {p0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getLocalShelfFromShelfManager()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0, v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->handleUpdateFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    :cond_1
    return-void
.end method

.method protected recordMetricsForShelfSelectionMade(Ljava/lang/String;)V
    .locals 5

    .line 811
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "ManualShelvingPerformed"

    .line 812
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getManualShelvingMetricsCounterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 815
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget$SAGoodreadsShelfComponent;->getReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object v0

    const-string v2, "ShelfAction"

    .line 816
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    const-string v3, "AnyActionsAutoShelvingWidget"

    const-string v4, "PerformManualShelving"

    invoke-interface {v2, v3, v4, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 821
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getStartActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object v0

    .line 822
    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getManualShelvingMetricsCounterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
