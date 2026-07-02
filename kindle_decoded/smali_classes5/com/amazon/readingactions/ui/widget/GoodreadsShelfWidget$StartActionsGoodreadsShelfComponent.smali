.class public Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;
.super Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;
.source "GoodreadsShelfWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartActionsGoodreadsShelfComponent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;,
        Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$BlockingTutorialDialogListener;
    }
.end annotation


# instance fields
.field private autoShelfSwitchOnCheckedChangeListener:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

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

.field private themedDropdownDividerColor:I

.field private themedSpinnerArrow:Landroid/graphics/drawable/Drawable;

.field private themedSpinnerSelectedBackgroundColor:I

.field private themedTextColor:I

.field private tutorialDialogListener:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$BlockingTutorialDialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;Ljava/lang/String;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;-><init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V

    .line 243
    new-instance p1, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;-><init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$1;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->autoShelfSwitchOnCheckedChangeListener:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

    .line 250
    iput-object p4, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->startActionsAutoShelvingBlockingTutorialManager:Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    .line 251
    new-instance p1, Lcom/amazon/startactions/jit/SubtleJITController;

    invoke-direct {p1}, Lcom/amazon/startactions/jit/SubtleJITController;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->subtleJitController:Lcom/amazon/startactions/jit/SubtleJITController;

    .line 252
    iget-boolean p1, p2, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->isSensitive:Z

    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->isSensitive:Z

    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->informationalSubtleJitWasShown:Z

    .line 254
    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->blockingJitWasShown:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Ljava/util/Map;
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->getReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Landroid/widget/CompoundButton;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->removeTutorial()V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Lcom/amazon/startactions/jit/SubtleJITController;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->subtleJitController:Lcom/amazon/startactions/jit/SubtleJITController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->resetAutoShelfSwitchThemeOnTutorialDismissIfNecessary()V

    return-void
.end method

.method static synthetic access$402(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)Lcom/amazon/startactions/jit/BlockingTutorialFragment;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->layoutTutorial()V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->startActionsAutoShelvingBlockingTutorialManager:Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->notifyTutorialDialogDismissListener()V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    return-object p0
.end method

.method private addToggleChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 657
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->autoShelfSwitchOnCheckedChangeListener:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

    invoke-virtual {v0, p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;->addListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method private buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;
    .locals 7

    .line 680
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

    .line 681
    :goto_0
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_autoshelving_blocking_tutorial_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    .line 684
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/ea/R$dimen;->blocking_tutorial_pointer_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    .line 685
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/amazon/kindle/ea/R$color;->startactions_dialog_color_white:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v2, v0

    .line 682
    invoke-static/range {v1 .. v6}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->createInstance(Landroid/view/View;Landroid/view/View;ZIFI)Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    move-result-object v1

    .line 686
    new-instance v2, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$7;

    invoke-direct {v2, p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$7;-><init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V

    invoke-virtual {v1, v2}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->setBackButtonListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;)V

    .line 703
    sget v2, Lcom/amazon/kindle/ea/R$id;->button_enable_autoshelving:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 704
    new-instance v3, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$8;

    invoke-direct {v3, p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$8;-><init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    sget v2, Lcom/amazon/kindle/ea/R$id;->button_disable_autoshelving:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 722
    new-instance v2, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$9;

    invoke-direct {v2, p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$9;-><init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->autoShelfSwitchOnCheckedChangeListener:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

    new-instance v2, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$10;

    invoke-direct {v2, p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$10;-><init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V

    invoke-virtual {v0, v2}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;->addListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 754
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 755
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "JITT"

    .line 756
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 757
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 758
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v2, "AnyActionsBlockingJIT"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    return-object v1
.end method

.method private canDisplayBlockingJIT()Z
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->initiallyUseAutoShelfExperience(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->startActionsAutoShelvingBlockingTutorialManager:Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    .line 526
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

    .line 536
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->initiallyUseAutoShelfExperience(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private displayErrorMessageSubtleJitIfRequired()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->getUpdateFailureThatOccurredForBook(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_subtle_jit_message:I

    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->displaySubtleJit(I)V

    .line 610
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->setUpdateFailureThatOccurredForBook(Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 612
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "DisplayedErrorSubtleJIT"

    .line 613
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private displayInformationalSubtleJitIfRequired(Lcom/amazon/startactions/jit/SubtleJitType;)V
    .locals 3

    .line 579
    sget-object v0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$2;->$SwitchMap$com$amazon$startactions$jit$SubtleJitType:[I

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

    .line 590
    :cond_0
    sget v0, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_disabled_subtle_jit:I

    goto :goto_0

    .line 586
    :cond_1
    sget v0, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_subtle_jit:I

    goto :goto_0

    .line 581
    :cond_2
    sget v0, Lcom/amazon/kindle/ea/R$string;->startactions_widget_goodreads_shelf_subtle_jit:I

    .line 582
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->subtleJitController:Lcom/amazon/startactions/jit/SubtleJITController;

    invoke-virtual {v2}, Lcom/amazon/startactions/jit/SubtleJITController;->onSensitiveJITWasShown()V

    .line 597
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->displaySubtleJit(I)V

    .line 598
    iput-boolean v1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->informationalSubtleJitWasShown:Z

    .line 600
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 601
    iget-object p1, p1, Lcom/amazon/startactions/jit/SubtleJitType;->metricName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method private displayOfflineSubtleJit()V
    .locals 2

    .line 621
    sget v0, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_offline_subtle_jit:I

    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->displaySubtleJit(I)V

    .line 623
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "DisplayedOfflineSubtleJIT"

    .line 624
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method private displaySubtleJit(I)V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->dividerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->subtleJitContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/amazon/kindle/ea/R$id;->startactions_subtle_jit_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 636
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 637
    iget p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedTextColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 639
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->subtleJitContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->displaySubtleJit(Landroid/widget/LinearLayout;Landroid/widget/TextView;Z)V

    return-void
.end method

.method private getIfInformationalSubtleJitWasShown()Z
    .locals 1

    .line 648
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->informationalSubtleJitWasShown:Z

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

    .line 829
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 830
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getBaseReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 832
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->didStartActionsOpenAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "InvokedByBookOpen"

    goto :goto_0

    :cond_0
    const-string v1, "InvokedByHamburgerMenu"

    :goto_0
    const-string v2, "WidgetInvokedBy"

    .line 831
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    iget-boolean v1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->isSensitive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IsSensitive"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->getIfInformationalSubtleJitWasShown()Z

    move-result v1

    .line 839
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "SubtleJitWasShown"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-boolean v1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->blockingJitWasShown:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "JitWasShown"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getSubtleJITType()Lcom/amazon/startactions/jit/SubtleJitType;
    .locals 2

    .line 560
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->canDisplaySubtleJIT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    sget-object v0, Lcom/amazon/startactions/jit/SubtleJitType;->NONE:Lcom/amazon/startactions/jit/SubtleJitType;

    return-object v0

    .line 565
    :cond_0
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->canDisplayBlockingJIT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    sget-object v0, Lcom/amazon/startactions/jit/SubtleJitType;->NONE:Lcom/amazon/startactions/jit/SubtleJitType;

    return-object v0

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->subtleJitController:Lcom/amazon/startactions/jit/SubtleJITController;

    iget-boolean v1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->isSensitive:Z

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/jit/SubtleJITController;->getSubtleJITType(Z)Lcom/amazon/startactions/jit/SubtleJitType;

    move-result-object v0

    return-object v0
.end method

.method private initializeSubtleJITController()V
    .locals 3

    .line 543
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->canDisplaySubtleJIT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 547
    :cond_0
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->canDisplayBlockingJIT()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->subtleJitController:Lcom/amazon/startactions/jit/SubtleJITController;

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->isToggleInitiallyChecked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->isSensitive:Z

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/jit/SubtleJITController;->onAutoShelfExperienceWasShown(ZZ)V

    return-void
.end method

.method private isToggleInitiallyChecked()Z
    .locals 1

    .line 510
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->isStartActionsAutoShelvingPreferred()Z

    move-result v0

    return v0
.end method

.method private layoutTutorial()V
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->requestLayout(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private lightenAutoShelfSwitchForTutorialIfNecessary()V
    .locals 2

    .line 857
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-ne v0, v1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 859
    check-cast v0, Landroid/widget/Switch;

    .line 862
    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->fosSwitchDefaultThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 863
    invoke-virtual {v0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->fosSwitchDefaultTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 865
    sget v1, Lcom/amazon/kindle/ea/R$drawable;->startactions_switch_thumb_jit:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setThumbResource(I)V

    .line 866
    sget v1, Lcom/amazon/kindle/ea/R$drawable;->startactions_switch_track_jit:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTrackResource(I)V

    :cond_0
    return-void
.end method

.method private notifyTutorialDialogDismissListener()V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->tutorialDialogListener:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$BlockingTutorialDialogListener;

    if-eqz v0, :cond_1

    .line 775
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$BlockingTutorialDialogListener;->onTutorialDismiss(Z)V

    :cond_1
    return-void
.end method

.method private removeTutorial()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 765
    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    .line 767
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsBlockingJIT"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    .line 769
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->notifyTutorialDialogDismissListener()V

    :cond_0
    return-void
.end method

.method private resetAutoShelfSwitchThemeOnTutorialDismissIfNecessary()V
    .locals 2

    .line 876
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-ne v0, v1, :cond_1

    .line 877
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 878
    check-cast v0, Landroid/widget/Switch;

    .line 880
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->fosSwitchDefaultThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 881
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->fosSwitchDefaultTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 884
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private setOnTutorialDismissListener(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$BlockingTutorialDialogListener;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->tutorialDialogListener:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$BlockingTutorialDialogListener;

    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 267
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedTextColor:I

    .line 268
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_spinner_selected_background_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedSpinnerSelectedBackgroundColor:I

    .line 269
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_spinner_arrow:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedSpinnerArrow:Landroid/graphics/drawable/Drawable;

    .line 270
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_spinner_dropdown_divider_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedDropdownDividerColor:I

    .line 272
    sget v0, Lcom/amazon/kindle/ea/R$layout;->readingactions_goodreads_shelf:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->initialize(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;ILjava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->subscribeToShelfManagerUpdatesAndFetchRemoteShelf()V

    .line 275
    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->dividerView:Landroid/view/View;

    .line 276
    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->subtleJitContainer:Landroid/widget/LinearLayout;

    .line 277
    sget p1, Lcom/amazon/kindle/ea/R$array;->anyactions_subtle_jit_background:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->manualShelfPrompt:Landroid/widget/TextView;

    iget p2, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfPrompt:Landroid/widget/TextView;

    iget p2, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    iget p2, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedSpinnerSelectedBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setBackgroundColor(I)V

    .line 282
    sget p1, Lcom/amazon/kindle/ea/R$array;->anyactions_switch_thumb:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->initializeSwitchUi(I)V

    .line 284
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-static {p1, p2}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->setOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 286
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->isToggleInitiallyChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 287
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->autoShelfSwitchOnCheckedChangeListener:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 288
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->autoShelfSwitchOnCheckedChangeListener:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;

    new-instance p2, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$1;

    invoke-direct {p2, p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$1;-><init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V

    invoke-virtual {p1, p2}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$AutoShelfSwitchOnCheckedChangeListener;->addListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 297
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->canDisplayBlockingJIT()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 298
    new-instance p1, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$2;

    invoke-direct {p1, p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$2;-><init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V

    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->setOnTutorialDismissListener(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$BlockingTutorialDialogListener;)V

    .line 307
    :cond_0
    new-instance p1, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$3;

    invoke-direct {p1, p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$3;-><init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V

    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->addToggleChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 314
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->initiallyUseAutoShelfExperience(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 315
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->useAutoShelfExperience()V

    .line 318
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "AnyActionsAutoShelvingWidget"

    const-string p3, "AutoShelvingJitAskedToBeShown"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string p2, "DisplayedBlockingJIT"

    .line 323
    invoke-virtual {p1, p2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 326
    iget-object p3, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->startActionsAutoShelvingBlockingTutorialManager:Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    invoke-virtual {p3}, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->lightenAutoShelfSwitchForTutorialIfNecessary()V

    .line 328
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    .line 331
    iget-object p3, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    new-instance p4, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$4;

    invoke-direct {p4, p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$4;-><init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;)V

    invoke-virtual {p3, p4}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->setJitDialogDismissListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;)V

    .line 337
    iget-object p3, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    .line 338
    iget-object p4, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    sget v0, Lcom/amazon/kindle/ea/R$id;->holder_for_tutorial:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 339
    invoke-virtual {p4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p4

    new-instance v0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$5;

    invoke-direct {v0, p0, p3}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$5;-><init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;Landroid/app/Activity;)V

    invoke-virtual {p4, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 350
    iget-object p4, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p4

    new-instance v0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$6;

    invoke-direct {v0, p0, p3}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent$6;-><init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;Landroid/app/Activity;)V

    invoke-virtual {p4, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 p3, 0x1

    .line 362
    iput-boolean p3, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->blockingJitWasShown:Z

    .line 363
    invoke-virtual {p1, p2, p3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string p2, "ClickedJITToggle"

    .line 364
    invoke-virtual {p1, p2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string p2, "ClickedJITEnableButton"

    .line 365
    invoke-virtual {p1, p2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string p2, "ClickedJITDisableButton"

    .line 366
    invoke-virtual {p1, p2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string p2, "ClickedJITBackButton"

    .line 367
    invoke-virtual {p1, p2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 370
    :cond_1
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 371
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->initializeSubtleJITController()V

    .line 372
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->getSubtleJITType()Lcom/amazon/startactions/jit/SubtleJitType;

    move-result-object p1

    .line 373
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->displayInformationalSubtleJitIfRequired(Lcom/amazon/startactions/jit/SubtleJitType;)V

    goto :goto_0

    .line 375
    :cond_2
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->displayOfflineSubtleJit()V

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->useManualShelfExperience()V

    .line 379
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->displayErrorMessageSubtleJitIfRequired()V

    .line 381
    :goto_0
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    return-object p1
.end method

.method protected getMetadataOrigin()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;
    .locals 1

    .line 847
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->SA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    return-object v0
.end method

.method protected getSpinnerDropDownView(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 404
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/kindle/ea/R$layout;->readingactions_spinner_dropdown_item:I

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 406
    :cond_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->readingactions_spinner_dropdown_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 407
    iget v1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedTextColor:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p3, :cond_1

    .line 409
    iget p3, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedSpinnerSelectedBackgroundColor:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 411
    :cond_1
    sget p3, Lcom/amazon/kindle/ea/R$array;->readingactions_spinner_background_color:I

    invoke-static {p3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 413
    :goto_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->readingactions_dropdown_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 414
    iget p3, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedDropdownDividerColor:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 417
    iget-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    return-object p1
.end method

.method protected getSpinnerView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    .line 391
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/amazon/kindle/ea/R$layout;->readingactions_spinner_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 393
    :cond_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->readingactions_goodreads_spinner_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 394
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/ea/R$style;->readingactions_amazon_text_button_regular:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 395
    iget v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedTextColor:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 396
    sget p2, Lcom/amazon/kindle/ea/R$id;->readingactions_goodreads_spinner_view_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 397
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->themedSpinnerArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method protected incrementMetric(Ljava/lang/String;)V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 822
    invoke-virtual {v0, p1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method protected initMetrics()V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "AutoShelvingPerformed"

    .line 782
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v1, "ManualShelvingPerformed"

    .line 783
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v1, "ManualShelvingCurrentlyReading"

    .line 784
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v1, "ManualShelvingWantToRead"

    .line 785
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v1, "ManualShelvingRead"

    .line 786
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v1, "ManualShelvingRemove"

    .line 787
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v1, "DisplayedManualShelfExperience"

    .line 788
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v1, "DisplayedAutoShelfExperience"

    .line 789
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    return-void
.end method

.method protected initiallyUseAutoShelfExperience(Ljava/lang/String;)Z
    .locals 3

    .line 489
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 491
    invoke-static {}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "currentBook is null in GoodreadsShelfWidget"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 495
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v2, :cond_1

    return v1

    .line 500
    :cond_1
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->didStartActionsOpenAutomatically()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "none"

    .line 501
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

.method protected logMetricsForCurrentExperience()V
    .locals 3

    .line 810
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 811
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "DisplayedAutoShelfExperience"

    .line 812
    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v1, "DisplayedManualShelfExperience"

    .line 814
    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 4

    .line 438
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->unsubscribeFromShelfManagerUpdates()V

    .line 440
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "currently-reading"

    invoke-virtual {p0, v2, v0, v1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateShelf(Ljava/lang/String;ZZ)V

    .line 443
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->startActionsAutoShelvingBlockingTutorialManager:Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;

    invoke-virtual {v0}, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;->noticeUserInteraction()V

    .line 445
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "AutoShelvingPerformed"

    .line 446
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 448
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->getReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ShelfAction"

    .line 449
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
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

    .line 423
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getShelf()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    .line 429
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->handleFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V

    :cond_1
    return-void
.end method

.method public onReaderActivityPause()V
    .locals 1

    .line 461
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onReaderActivityResume()V
    .locals 2

    .line 470
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->getUpdateFailureThatOccurredForBook(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object v0

    .line 475
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getLocalShelfFromShelfManager()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->handleUpdateFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    :cond_0
    return-void
.end method

.method protected recordMetricsForShelfSelectionMade(Ljava/lang/String;)V
    .locals 5

    .line 794
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "ManualShelvingPerformed"

    .line 795
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getManualShelvingMetricsCounterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 798
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$StartActionsGoodreadsShelfComponent;->getReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object v0

    const-string v2, "ShelfAction"

    .line 799
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    const-string v3, "AnyActionsAutoShelvingWidget"

    const-string v4, "PerformManualShelving"

    invoke-interface {v2, v3, v4, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 804
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getStartActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object v0

    .line 805
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getManualShelvingMetricsCounterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
