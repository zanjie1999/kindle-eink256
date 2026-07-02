.class public Lcom/amazon/kcp/reader/ui/ReaderViewOptions;
.super Landroid/widget/ScrollView;
.source "ReaderViewOptions.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/AnimatableVisibility;
.implements Lcom/amazon/kcp/reader/ui/ViewOptions;


# static fields
.field private static final ADAPTIVE_LAYOUT_RATIO_THRESHOLD:Ljava/lang/Float;

.field static final ALPHA_DISABLED:Ljava/lang/Float;

.field private static final ALPHA_ENABLED:Ljava/lang/Float;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationEnabled:Z

.field private animationOption:Landroid/view/ViewGroup;

.field protected brightnessSlider:Lcom/amazon/kcp/reader/ui/ReaderBrightnessSlider;

.field protected container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

.field private continuousScrollReflowableOption:Landroid/view/ViewGroup;

.field private fontView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

.field private fontViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

.field protected hideAnimation:I

.field protected isAnimating:Z

.field private kindleIllustratedAutoPlayAnimationsOption:Landroid/view/ViewGroup;

.field private kindleIllustratedOption:Landroid/view/ViewGroup;

.field private lineHeightViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

.field private lineSpacingView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

.field private marginView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

.field private marginViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

.field private multiColumnsView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

.field private orientationLockOption:Landroid/view/ViewGroup;

.field private sectionLayoutOption:Landroid/view/ViewGroup;

.field protected showAnimation:I

.field private textAlignmentView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

.field private textAlignmentViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

.field private textColorView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

.field private textSizeView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->TAG:Ljava/lang/String;

    const v0, 0x3e4ccccd    # 0.2f

    .line 60
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->ALPHA_DISABLED:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->ALPHA_ENABLED:Ljava/lang/Float;

    const v0, 0x417c2709

    .line 67
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->ADAPTIVE_LAYOUT_RATIO_THRESHOLD:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    sget p1, Lcom/amazon/kindle/krl/R$anim;->recent_exit:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->hideAnimation:I

    .line 87
    sget p1, Lcom/amazon/kindle/krl/R$anim;->recent_enter:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->showAnimation:I

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->isAnimating:Z

    .line 135
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addAnimationOption(Landroid/view/ViewGroup;)V
    .locals 8

    .line 411
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->guided_view_animations:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 413
    new-instance v5, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$3;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$3;-><init>(Lcom/amazon/kcp/reader/ui/ReaderViewOptions;)V

    .line 420
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getGuidedViewAnimationEnabled()Z

    move-result v6

    .line 422
    sget v7, Lcom/amazon/kindle/krl/R$id;->view_options_animate_transition_switch:I

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->createViewOptionsToggleLayout(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ZI)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->animationOption:Landroid/view/ViewGroup;

    return-void
.end method

.method private addContinuousScrollReflowableOption(Landroid/view/ViewGroup;)V
    .locals 8

    .line 379
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->TAG:Ljava/lang/String;

    const-string v1, "Adding continuous scroll reflowable toggle option"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 385
    invoke-static {v0}, Lcom/amazon/kindle/yj/ContinuousScrollUtils;->isContinuousScrollSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->continuous_scroll_toggle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 390
    new-instance v5, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$2;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$2;-><init>(Lcom/amazon/kcp/reader/ui/ReaderViewOptions;)V

    .line 402
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result v0

    .line 403
    sget v7, Lcom/amazon/kindle/krl/R$id;->view_options_continuous_scroll_switch:I

    move-object v2, p0

    move-object v3, p1

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->createViewOptionsToggleLayout(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ZI)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->continuousScrollReflowableOption:Landroid/view/ViewGroup;

    .line 405
    sget-object p1, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Continuous scroll option is set with value: %b, on init"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->configureContinuousScrollSettingVisibility()V

    return-void
.end method

.method private addKindleIllustratedAutoPlayOption(Landroid/view/ViewGroup;)V
    .locals 8

    .line 451
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->ki_auto_play_media_option_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 452
    new-instance v5, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$4;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$4;-><init>(Lcom/amazon/kcp/reader/ui/ReaderViewOptions;)V

    .line 459
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedAutoPlayEnabled()Z

    move-result v6

    .line 460
    sget v7, Lcom/amazon/kindle/krl/R$id;->view_options_auto_play_media_switch:I

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->createViewOptionsToggleLayout(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ZI)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->kindleIllustratedAutoPlayAnimationsOption:Landroid/view/ViewGroup;

    return-void
.end method

.method private addKindleIllustratedOption(Landroid/view/ViewGroup;)V
    .locals 8

    .line 351
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->kindle_illustrated:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 352
    new-instance v5, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$1;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderViewOptions;)V

    .line 359
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result v6

    .line 360
    sget v7, Lcom/amazon/kindle/krl/R$id;->view_options_show_media_switch:I

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->createViewOptionsToggleLayout(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ZI)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->kindleIllustratedOption:Landroid/view/ViewGroup;

    return-void
.end method

.method private addMultiColumnViewRow(Landroid/view/ViewGroup;)Lcom/amazon/kcp/reader/ui/ViewOptionsRow;
    .locals 2

    .line 266
    new-instance v0, Lcom/amazon/kcp/reader/ui/MultiColumnViewOptionData;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/MultiColumnViewOptionData;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->createViewOptionsRow(Landroid/view/ViewGroup;Lcom/amazon/kcp/reader/ui/ViewOptionData;)Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    move-result-object p1

    .line 268
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/amazon/kindle/yj/ContinuousScrollUtils;->isContinuousScrollSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 275
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->ALPHA_DISABLED:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 277
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 278
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->ALPHA_ENABLED:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAlpha(F)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private addOrientationLockOption()V
    .locals 8

    .line 365
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_1

    .line 366
    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->shouldAllowOrientationLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->isNewOrientationLockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->orientation_lock_toggle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 371
    sget v0, Lcom/amazon/kindle/krl/R$id;->view_options_content:I

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 373
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating orientation lock toggle option; is orientation locked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->isOrientationLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getOnOrientationLockCheckChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v5

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 375
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->isOrientationLocked()Z

    move-result v6

    sget v7, Lcom/amazon/kindle/krl/R$id;->view_options_orientation_lock_switch:I

    move-object v2, p0

    .line 374
    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->createViewOptionsToggleLayout(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ZI)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->orientationLockOption:Landroid/view/ViewGroup;

    :cond_1
    :goto_0
    return-void
.end method

.method private addSectionLayoutOptions(Landroid/view/ViewGroup;)V
    .locals 8

    .line 470
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->fit_to_width_toggle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 472
    new-instance v5, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$5;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$5;-><init>(Lcom/amazon/kcp/reader/ui/ReaderViewOptions;)V

    .line 481
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getSectionLayoutMode()Lcom/amazon/android/docviewer/SectionLayoutMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/android/docviewer/SectionLayoutMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 483
    sget v7, Lcom/amazon/kindle/krl/R$id;->view_options_vertical_scroll_landscape_switch:I

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->createViewOptionsToggleLayout(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ZI)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->sectionLayoutOption:Landroid/view/ViewGroup;

    return-void
.end method

.method private addTextAlignmentOption(Landroid/view/ViewGroup;)V
    .locals 3

    .line 428
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 431
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    new-instance v1, Lcom/amazon/kcp/reader/ui/TextAlignmentViewOptionsData;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/ui/TextAlignmentViewOptionsData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textAlignmentViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    .line 435
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->createViewOptionsRow(Landroid/view/ViewGroup;Lcom/amazon/kcp/reader/ui/ViewOptionData;)Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textAlignmentView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    .line 437
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->RaggedRight:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 438
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textAlignmentView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 439
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textAlignmentView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->ALPHA_DISABLED:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAlpha(F)V

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->updateTextAlignmentFieldActivation()V

    return-void
.end method

.method private addTextSizeOptions(Landroid/view/ViewGroup;)V
    .locals 3

    .line 465
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->view_options_row_text_size:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/ScrollView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textSizeView:Landroid/view/View;

    .line 466
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private configureComicsSettingsVisibility()V
    .locals 6

    .line 699
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->hasGuidedViewFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 700
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->hasGuidedViewNativeFeature()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 702
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->animationOption:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 703
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->sectionLayoutOption:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v0, :cond_3

    .line 705
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->sectionLayoutOption:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setEnabled(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method

.method private configureContinuousScrollSettingVisibility()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->continuousScrollReflowableOption:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 689
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->TAG:Ljava/lang/String;

    const-string v1, "Touch exploration is enabled, disabling continuous scroll option"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->continuousScrollReflowableOption:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setEnabled(Landroid/view/View;Z)V

    goto :goto_0

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->continuousScrollReflowableOption:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setEnabled(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createViewOptionsRow(Landroid/view/ViewGroup;Lcom/amazon/kcp/reader/ui/ViewOptionData;)Lcom/amazon/kcp/reader/ui/ViewOptionsRow;
    .locals 3

    .line 488
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->view_options_row:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/ScrollView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    .line 489
    invoke-virtual {v0, p2}, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->setData(Lcom/amazon/kcp/reader/ui/ViewOptionData;)V

    .line 490
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createViewOptionsToggleLayout(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ZI)Landroid/view/ViewGroup;
    .locals 4

    .line 310
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->hasGuidedViewFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$style;->cmx_toggle:I

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 312
    sget v2, Lcom/amazon/kindle/krl/R$layout;->view_options_comics_toggle_layout:I

    invoke-static {v0, v2, v1}, Landroid/widget/ScrollView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 316
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$style;->Theme_DeprecatedStyle_Dark:I

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 317
    sget v2, Lcom/amazon/kindle/krl/R$layout;->view_options_toggle_layout:I

    invoke-static {v0, v2, v1}, Landroid/widget/ScrollView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 321
    :goto_0
    sget v1, Lcom/amazon/kindle/krl/R$id;->view_options_toggle_layout_switch:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    .line 322
    invoke-virtual {v1, p4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 323
    invoke-virtual {v1, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 324
    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {v1, p5}, Landroid/widget/CompoundButton;->setId(I)V

    .line 327
    sget p3, Lcom/amazon/kindle/krl/R$id;->view_options_toggle_layout_text:I

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 328
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private displayOptions(ZI)V
    .locals 2

    .line 809
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->isAnimating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 810
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->isAnimating:Z

    .line 811
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 813
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$6;-><init>(Lcom/amazon/kcp/reader/ui/ReaderViewOptions;Z)V

    .line 831
    new-instance p1, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 833
    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private hasGuidedViewFeature()Z
    .locals 2

    .line 335
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GuidedView:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasGuidedViewNativeFeature()Z
    .locals 2

    .line 341
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GuidedViewNative:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDictionary(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 0

    .line 206
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isLavaMagazine()Z
    .locals 2

    .line 198
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTextAlignmentDisabled()Z
    .locals 2

    .line 150
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->RaggedRight:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setEnabled(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 856
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 861
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_3

    .line 864
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->ALPHA_ENABLED:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 866
    :cond_3
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->ALPHA_DISABLED:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 869
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setEnabledForAllChildren(Landroid/view/View;Z)V

    return-void
.end method

.method private setEnabledForAllChildren(Landroid/view/View;Z)V
    .locals 2

    .line 873
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 874
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 875
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 876
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 877
    invoke-direct {p0, v1, p2}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setViewVisible(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 839
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 841
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private shouldDisableTextAlignment()Z
    .locals 7

    .line 180
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 182
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    .line 188
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getOrientation()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->getColumnCount()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 189
    :goto_0
    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v5

    .line 190
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v1, v4

    .line 191
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v0

    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getCalculatedHorizontalMargins(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I

    move-result v0

    div-int/2addr v0, v4

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 192
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v1

    aget v1, v1, v5

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 194
    sget-object v1, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->ADAPTIVE_LAYOUT_RATIO_THRESHOLD:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private updateTextAlignmentFieldActivation()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textAlignmentView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->isTextAlignmentDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->shouldDisableTextAlignment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textAlignmentView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textAlignmentView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    sget-object v1, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->ALPHA_DISABLED:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAlpha(F)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textAlignmentView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textAlignmentView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    sget-object v1, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->ALPHA_ENABLED:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateToggle(Landroid/view/ViewGroup;IZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 289
    sget-object p2, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 290
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v0, p1

    const-string p1, "Setting compound button %s to isChecked state: %b"

    .line 289
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hide(Z)Z
    .locals 4

    .line 729
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 734
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->animationEnabled:Z

    and-int/2addr p1, v0

    .line 737
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 739
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->hideAnimation:I

    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->displayOptions(ZI)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 741
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setVisibility(I)V

    .line 744
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v0, Lcom/amazon/kindle/krl/R$id;->accessibility_gap_view:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 745
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 746
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 747
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-eqz v1, :cond_2

    .line 749
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v1, Lcom/amazon/kindle/krl/R$id;->menuitem_viewoptions:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 751
    invoke-virtual {p1, v3, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 755
    :cond_2
    invoke-virtual {p1, v3, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_3
    :goto_1
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 711
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDownloadOnDemandFontEvent(Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 889
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->getEventType()Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DOWNLOAD_SUCCESS:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    if-ne v0, v1, :cond_2

    .line 890
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 891
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 892
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 893
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->getFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getLanguageSet()Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mobipocket/android/drawing/LanguageSet;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 894
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->fontView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-virtual {p1}, Landroid/widget/Spinner;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->fontView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    iget-boolean p1, p1, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->isDropDownnMenuShown:Z

    if-eqz p1, :cond_2

    .line 895
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object p1

    .line 896
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->accessibility_font_download_complete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->fontView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    .line 895
    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 218
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 220
    sget v0, Lcom/amazon/kindle/krl/R$id;->brightness_slider_options:I

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ReaderBrightnessSlider;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->brightnessSlider:Lcom/amazon/kcp/reader/ui/ReaderBrightnessSlider;

    .line 222
    new-instance v0, Lcom/amazon/kcp/reader/ui/LineSpacingViewOptionData;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/LineSpacingViewOptionData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->lineHeightViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    .line 223
    new-instance v0, Lcom/amazon/kcp/reader/ui/MarginViewOptionData;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/MarginViewOptionData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->marginViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    .line 224
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontOptionData(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/ViewOptionData;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->fontViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    .line 226
    sget v0, Lcom/amazon/kindle/krl/R$id;->view_options_content:I

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addTextSizeOptions(Landroid/view/ViewGroup;)V

    .line 233
    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->shouldAllowOrientationLock()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->isNewOrientationLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addContinuousScrollReflowableOption(Landroid/view/ViewGroup;)V

    .line 236
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addKindleIllustratedOption(Landroid/view/ViewGroup;)V

    .line 237
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addKindleIllustratedAutoPlayOption(Landroid/view/ViewGroup;)V

    .line 238
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addSectionLayoutOptions(Landroid/view/ViewGroup;)V

    .line 239
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addAnimationOption(Landroid/view/ViewGroup;)V

    .line 240
    new-instance v1, Lcom/amazon/kcp/reader/ui/TextColorViewOptionData;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/ui/TextColorViewOptionData;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->createViewOptionsRow(Landroid/view/ViewGroup;Lcom/amazon/kcp/reader/ui/ViewOptionData;)Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textColorView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    .line 242
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->fontViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->createViewOptionsRow(Landroid/view/ViewGroup;Lcom/amazon/kcp/reader/ui/ViewOptionData;)Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->fontView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    .line 243
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->areDownloadsCompleted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 244
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INCOMPLETE_FONT_DOWNLOAD"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->marginViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->createViewOptionsRow(Landroid/view/ViewGroup;Lcom/amazon/kcp/reader/ui/ViewOptionData;)Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->marginView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    .line 248
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->lineHeightViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->createViewOptionsRow(Landroid/view/ViewGroup;Lcom/amazon/kcp/reader/ui/ViewOptionData;)Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->lineSpacingView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    .line 250
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addTextAlignmentOption(Landroid/view/ViewGroup;)V

    .line 252
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addMultiColumnViewRow(Landroid/view/ViewGroup;)Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->multiColumnsView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    .line 255
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->animationEnabled:Z

    .line 257
    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->shouldAllowOrientationLock()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->isNewOrientationLockEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 258
    :cond_3
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addContinuousScrollReflowableOption(Landroid/view/ViewGroup;)V

    .line 260
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addOrientationLockOption()V

    .line 262
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->updateRowStates()V

    return-void
.end method

.method public onSettingsChangedEvent(Lcom/amazon/kindle/persistence/SettingsChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 140
    invoke-virtual {p1}, Lcom/amazon/kindle/persistence/SettingsChangedEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 141
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLUMN_COUNT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_LENGTH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_SIZE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->updateTextAlignmentFieldActivation()V

    :cond_1
    return-void
.end method

.method public setAvailable(Z)V
    .locals 0

    return-void
.end method

.method public setReaderMenuContainer(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    .line 516
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->orientationLockOption:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addOrientationLockOption()V

    :cond_0
    return-void
.end method

.method public setShowTypefaceOptions(Z)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 531
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->updateRowStates()V

    .line 532
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    if-nez p1, :cond_0

    const/high16 p1, 0x40000

    .line 534
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x60000

    .line 536
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    :goto_0
    return-void
.end method

.method public show(Z)Z
    .locals 10

    .line 552
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 557
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->animationEnabled:Z

    and-int/2addr p1, v0

    .line 560
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setVisibility(I)V

    const/4 v0, 0x1

    .line 561
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 564
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 566
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->lineSpacingView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-direct {p0, v3, v2}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setViewVisible(Landroid/view/View;Z)V

    .line 567
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->marginView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->isLavaMagazine()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setViewVisible(Landroid/view/View;Z)V

    .line 568
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->multiColumnsView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->isLavaMagazine()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setViewVisible(Landroid/view/View;Z)V

    .line 571
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 572
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isReaderContentVertical()Z

    move-result v3

    .line 573
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->lineHeightViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v5, v3}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->setVertical(Z)V

    .line 574
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->marginViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v5, v3}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->setVertical(Z)V

    .line 575
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v3, v3, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v4

    .line 578
    :goto_2
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    const/16 v6, 0x8

    if-eqz v5, :cond_b

    if-eqz v3, :cond_b

    .line 582
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 584
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;->getInstance()Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;

    move-result-object v7

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getOrientation()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v7, v8, v9, v5}, Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;->getMultiColumnStatus(ILandroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    move-result-object v5

    .line 585
    sget-object v7, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->USER_SPECIFIED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    if-ne v5, v7, :cond_4

    instance-of v5, v3, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    if-nez v5, :cond_4

    .line 587
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->isLavaMagazine()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 589
    :goto_3
    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->multiColumnsView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-direct {p0, v7, v5}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setViewVisible(Landroid/view/View;Z)V

    .line 592
    :cond_5
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    .line 593
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v7

    if-nez v7, :cond_7

    instance-of v7, v3, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v7, 0x1

    .line 596
    :goto_5
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v7, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    if-nez v7, :cond_a

    if-eqz v5, :cond_9

    goto :goto_7

    .line 614
    :cond_9
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textAlignmentView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    if-eqz v5, :cond_b

    .line 615
    invoke-direct {p0, v5, v2}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setViewVisible(Landroid/view/View;Z)V

    goto :goto_8

    .line 602
    :cond_a
    :goto_7
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textSizeView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 603
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->multiColumnsView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 604
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->marginView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 605
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->fontView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 606
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->lineSpacingView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 607
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->kindleIllustratedOption:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 608
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->kindleIllustratedAutoPlayAnimationsOption:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 609
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textColorView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 610
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->brightnessSlider:Lcom/amazon/kcp/reader/ui/ReaderBrightnessSlider;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 611
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textAlignmentView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    if-eqz v2, :cond_b

    .line 612
    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_b
    :goto_8
    if-eqz v3, :cond_10

    .line 621
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->isFontTypeChangeSupported()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->hasSupportedFonts()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 623
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->fontView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->fontViewOptionData:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v2, v5}, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->setData(Lcom/amazon/kcp/reader/ui/ViewOptionData;)V

    .line 624
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->fontView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setViewVisible(Landroid/view/View;Z)V

    goto :goto_9

    .line 626
    :cond_c
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->fontView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-direct {p0, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setViewVisible(Landroid/view/View;Z)V

    .line 629
    :goto_9
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->isKindleIllustratedSupported()Z

    move-result v2

    .line 631
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->kindleIllustratedOption:Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v2}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setViewVisible(Landroid/view/View;Z)V

    if-eqz v2, :cond_d

    .line 633
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 634
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textColorView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-direct {p0, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setEnabled(Landroid/view/View;Z)V

    .line 635
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->kindleIllustratedAutoPlayAnimationsOption:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_a

    .line 637
    :cond_d
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textColorView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setEnabled(Landroid/view/View;Z)V

    .line 638
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->kindleIllustratedAutoPlayAnimationsOption:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 641
    :goto_a
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->isLavaMagazine()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 642
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v2

    sget-object v5, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    if-ne v2, v5, :cond_e

    const/4 v1, 0x1

    .line 643
    :cond_e
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textSizeView:Landroid/view/View;

    xor-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v2, v5}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setEnabledForAllChildren(Landroid/view/View;Z)V

    .line 644
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->fontView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    xor-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v2, v5}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setEnabled(Landroid/view/View;Z)V

    .line 645
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->lineSpacingView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    xor-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v2, v5}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setEnabled(Landroid/view/View;Z)V

    .line 646
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textAlignmentView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    xor-int/2addr v1, v0

    invoke-direct {p0, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->setEnabled(Landroid/view/View;Z)V

    .line 653
    :cond_f
    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->isDictionary(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 654
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->textColorView:Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_10
    if-eqz p1, :cond_11

    .line 659
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->showAnimation:I

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->displayOptions(ZI)V

    goto :goto_b

    .line 661
    :cond_11
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->updateRowStates()V

    .line 662
    invoke-virtual {p0}, Landroid/widget/ScrollView;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_12

    .line 663
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    :cond_12
    const/16 p1, 0x40

    .line 666
    invoke-virtual {p0, p1, v4}, Landroid/widget/ScrollView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 670
    :goto_b
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 671
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v1, Lcom/amazon/kindle/krl/R$id;->accessibility_gap_view:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_13

    const/4 v1, 0x2

    .line 673
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 676
    :cond_13
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->configureContinuousScrollSettingVisibility()V

    .line 677
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->configureComicsSettingsVisibility()V

    .line 679
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->orientationLockOption:Landroid/view/ViewGroup;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz p1, :cond_14

    .line 680
    sget-object p1, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating orientation lock toggle option; is orientation locked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->isOrientationLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->orientationLockOption:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/krl/R$id;->view_options_orientation_lock_switch:I

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->container:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 682
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->isOrientationLocked()Z

    move-result v2

    .line 681
    invoke-direct {p0, p1, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->updateToggle(Landroid/view/ViewGroup;IZ)V

    :cond_14
    return v0
.end method

.method public updateRowStates()V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->brightnessSlider:Lcom/amazon/kcp/reader/ui/ReaderBrightnessSlider;

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderBrightnessSlider;->syncSelectedOptions()V

    :cond_0
    return-void
.end method
