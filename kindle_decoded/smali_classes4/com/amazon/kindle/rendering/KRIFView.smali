.class public Lcom/amazon/kindle/rendering/KRIFView;
.super Lcom/amazon/android/docviewer/KindleDocView;
.source "KRIFView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;,
        Lcom/amazon/kindle/rendering/KRIFView$KRIFLocalizationDataSource;
    }
.end annotation


# static fields
.field private static final CUSTOM:Ljava/lang/String; = "Custom"

.field private static final DEFAULT:Ljava/lang/String; = "Default"

.field private static final GREEN:Ljava/lang/String; = "Green"

.field private static final NIGHT:Ljava/lang/String; = "Night"

.field private static final SEPIA:Ljava/lang/String; = "Sepia"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentSafeInsetsPair:Lcom/amazon/kcp/util/device/SafeInsetsPair;

.field protected docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

.field private eventHandler:Lcom/amazon/kindle/rendering/KRIFUIEventHandler;

.field private eventListener:Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;

.field private volatile isClosed:Z

.field private isDoneWithInitialDraw:Z

.field private isMoving:Z

.field protected krfView:Lcom/amazon/krf/platform/KRFView;

.field private volatile krfViewValid:Z

.field private krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

.field private mDownX:F

.field private mDownY:F

.field private mTouchSlop:I

.field private m_MarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private navigationListener:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

.field orientationLockRequest:Lcom/amazon/krf/platform/OrientationLockRequest;

.field orientationLockRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private selectionChangeListener:Lcom/amazon/krf/platform/SelectionChangeListener;

.field private selectionColor:I

.field private selectionHandleStyle:Lcom/amazon/krf/platform/SelectionState$HandleStyle;

.field private settingsChangedListener:Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;

.field private textSelectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;",
            ">;"
        }
    .end annotation
.end field

.field private transientHighlightManager:Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;

.field private weblabProvider:Lcom/amazon/kindle/rendering/KRIFWeblabProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    const-class v0, Lcom/amazon/kindle/rendering/KRIFView;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/KRFBook;Landroid/content/Context;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 3

    .line 192
    invoke-direct {p0, p2, p3}, Lcom/amazon/android/docviewer/KindleDocView;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfViewValid:Z

    .line 139
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->isDoneWithInitialDraw:Z

    .line 148
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->isClosed:Z

    .line 154
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->orientationLockRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 171
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFWeblabProvider;

    invoke-direct {v1}, Lcom/amazon/kindle/rendering/KRIFWeblabProvider;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->weblabProvider:Lcom/amazon/kindle/rendering/KRIFWeblabProvider;

    .line 173
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->isMoving:Z

    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->currentSafeInsetsPair:Lcom/amazon/kcp/util/device/SafeInsetsPair;

    const-string v1, "KRIFView<init>"

    .line 193
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 194
    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 195
    invoke-virtual {p3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kindle/rendering/KRIFView;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 196
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 198
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/rendering/KRIFView;->initKRFView(Lcom/amazon/krf/platform/KRFBook;Landroid/content/Context;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    const/4 p1, 0x2

    .line 200
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 201
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->mTouchSlop:I

    .line 204
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/rendering/KRIFView;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFView;->restoreUserOrientation()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/rendering/KRIFView;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/amazon/kindle/rendering/KRIFView;->isClosed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/rendering/KRIFView;Lcom/amazon/krf/platform/KRFBook;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->initBook(Lcom/amazon/krf/platform/KRFBook;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kindle/rendering/KRIFView;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private applyInitialSettings(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/rendering/KRIFSettingsControl;)V
    .locals 10

    .line 432
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isPageCurlDebugToggleEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isPageCurlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->enablePageCurl(Z)V

    .line 437
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v4

    aget v1, v1, v4

    .line 438
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v4

    .line 439
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v5

    .line 441
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v6

    .line 446
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 447
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColumnCount()I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    .line 450
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFView;->getConfigurationOrientation()I

    .line 451
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getWindowSizeWithoutCornerNotch(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v8

    .line 457
    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v9, v8}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setDimensions(II)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 458
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/renderingmodule/R$integer;->navigation_margin_percent:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    invoke-virtual {p2, v8}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setTapRegionPercentage(F)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 459
    invoke-virtual {p2, v7}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setColumnCount(I)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 460
    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setFontSize(I)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 461
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->calculateLineSpacingInDocViewer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getLineSpacingIndex()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    move-result-object v1

    .line 464
    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->getLineSettingsForCurrentOrientation()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->lineSpacingOptionsToMeasureValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;Lcom/amazon/android/docviewer/KindleDocLineSettings;)Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v1

    .line 465
    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setLineSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    goto :goto_2

    .line 467
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setLineHeightFromFontIndex()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 469
    :goto_2
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getForceDisableJustification()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setForceDisableJustification(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 470
    invoke-virtual {p2, v4}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 471
    invoke-virtual {p2, v5}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 472
    invoke-virtual {p2, v6}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setDefaultFontFace(Ljava/lang/String;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 473
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getTextAlignment()Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setTextAlignment(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 476
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setKindleIllustratedSettings(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 477
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedAutoPlayEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setKindleIllustratedAutoPlayAnimations(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 480
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v1, v4, :cond_3

    .line 481
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getGuidedViewTransitionDuration()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setTransitionDuration(I)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 482
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getSectionLayoutMode()Lcom/amazon/android/docviewer/SectionLayoutMode;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setSectionLayoutMode(Lcom/amazon/android/docviewer/SectionLayoutMode;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 483
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isShowPageOnEnterEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setShowPageOnEnter(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 484
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isShowPageOnExitEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setShowPageOnExit(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 485
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getLetterboxColor()Lcom/amazon/android/docviewer/LetterboxingColor;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setLetterboxingMaskColor(Lcom/amazon/android/docviewer/LetterboxingColor;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 489
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 490
    invoke-virtual {p2, v3}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setSelectionEnabled(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 494
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v1

    .line 495
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ContinuousScrollReflowable:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v4, v5}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v1, :cond_7

    .line 496
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v4}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 497
    :cond_6
    :goto_3
    sget-object v4, Lcom/amazon/kindle/rendering/KRIFView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContinuousScrollReflowableEnabled called in KRIFView with value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2, v2}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setContinuousScrollReflowableEnabled(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    :cond_7
    if-nez v1, :cond_8

    .line 503
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerEnabled()Z

    move-result v1

    .line 504
    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingRulerEnabled(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    if-eqz v1, :cond_9

    .line 506
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerOpacity()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingRulerOpacity(F)V

    .line 507
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerStyle()Lcom/amazon/ksdk/presets/ReadingRulerStyleType;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingRulerStyle(Lcom/amazon/ksdk/presets/ReadingRulerStyleType;)V

    .line 508
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerColor()Lcom/amazon/ksdk/presets/Color;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingRulerColor(Lcom/amazon/ksdk/presets/Color;)V

    .line 509
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerSize()Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingRulerSize(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)V

    goto :goto_4

    .line 512
    :cond_8
    invoke-virtual {p2, v3}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingRulerEnabled(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 516
    :cond_9
    :goto_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 518
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    .line 520
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getContentDecorationSettingsProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 521
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setContentDecorationSettings(Ljava/util/Collection;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 525
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingModeFromLPR()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/ReadingModeUtil;->toKRFReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    return-void
.end method

.method private configureYJFootnotes()V
    .locals 4

    .line 1245
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_REGULAR:Lcom/mobipocket/android/drawing/FontFamily;

    .line 1246
    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    .line 1247
    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/renderingmodule/R$dimen;->yj_footnotes_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 1245
    invoke-virtual {v0, v1, v2}, Lcom/amazon/krf/platform/KRFView;->setFootnotesFontStyle(Ljava/lang/String;F)V

    return-void
.end method

.method private findDistance(FFFF)F
    .locals 4

    sub-float/2addr p1, p3

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1345
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p2, p4

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .line 1329
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private initBook(Lcom/amazon/krf/platform/KRFBook;)V
    .locals 10

    const-string v0, "KRFView.setBook()"

    .line 341
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 345
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getStartReadingPosition()I

    move-result v1

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object v1

    goto :goto_1

    :cond_1
    int-to-long v5, v1

    .line 347
    invoke-interface {p1, v5, v6}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object v1

    .line 351
    :goto_1
    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v5}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 352
    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v5}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingModeFromLPR()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/util/ReadingModeUtil;->toKRFReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v5

    .line 353
    sget-object v6, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->FIXED:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-ne v5, v6, :cond_2

    .line 354
    sget-object v5, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    invoke-interface {p1, v1, v5}, Lcom/amazon/krf/platform/KRFBook;->getEquivalentPositionInReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object v1

    .line 355
    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    sget-object v6, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    invoke-virtual {v5, v6}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 360
    :cond_2
    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 361
    invoke-virtual {v5}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->getViewSettings()Landroid/util/Pair;

    move-result-object v5

    .line 366
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFView;->getConfigurationOrientation()I

    move-result v6

    if-ne v6, v2, :cond_3

    .line 368
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/amazon/krf/platform/ViewSettings;

    .line 369
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/amazon/krf/platform/ViewSettings;

    .line 370
    sget-object v7, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    goto :goto_2

    .line 372
    :cond_3
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/amazon/krf/platform/ViewSettings;

    .line 373
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/amazon/krf/platform/ViewSettings;

    .line 374
    sget-object v7, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    :goto_2
    const/4 v8, 0x0

    .line 383
    :try_start_0
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 384
    iget-object v9, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v9, p1, v1, v6}, Lcom/amazon/krf/platform/KRFView;->setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;)V

    .line 385
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/amazon/krf/exception/KRFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 388
    sget-object v6, Lcom/amazon/kindle/rendering/KRIFView;->TAG:Ljava/lang/String;

    const-string v9, "Cannot set book"

    invoke-static {v6, v9, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    iput-boolean v3, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfViewValid:Z

    .line 390
    iput-object v8, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    :goto_3
    const-string v0, "KRIFView - apply opposite orientation settings"

    .line 395
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 397
    invoke-virtual {p0, v5, v7}, Lcom/amazon/kindle/rendering/KRIFView;->applySettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)Z

    .line 398
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 400
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFView;->eventHandler:Lcom/amazon/kindle/rendering/KRIFUIEventHandler;

    invoke-virtual {v0, v5}, Lcom/amazon/krf/platform/KRFView;->setDefaultUIEventHandler(Lcom/amazon/krf/platform/UIEventHandler;)V

    .line 404
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFView$KRIFLocalizationDataSource;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, p0, v5, v8}, Lcom/amazon/kindle/rendering/KRIFView$KRIFLocalizationDataSource;-><init>(Lcom/amazon/kindle/rendering/KRIFView;Landroid/content/Context;Lcom/amazon/kindle/rendering/KRIFView$1;)V

    .line 405
    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v5, v0}, Lcom/amazon/krf/platform/KRFView;->setLocalizationDataSource(Lcom/amazon/krf/platform/LocalizationDataSource;)V

    .line 406
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    new-instance v5, Lcom/amazon/kindle/listeners/KRIFBookBoundaryListener;

    iget-object v6, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {v5, v6}, Lcom/amazon/kindle/listeners/KRIFBookBoundaryListener;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-virtual {v0, v5}, Lcom/amazon/krf/platform/KRFView;->addBookBoundaryListener(Lcom/amazon/krf/platform/BookBoundaryListener;)V

    .line 407
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 408
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, v2}, Lcom/amazon/krf/platform/KRFView;->setRubberbandingEnabled(Z)Z

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applyReadingRulerSettings(Z)V

    .line 415
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    if-nez v4, :cond_5

    if-nez v1, :cond_6

    .line 416
    :cond_5
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isOpenInGuidedViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->hasPublisherPanels()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 417
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFView;->enterGuidedView()Z

    .line 421
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {p1, p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createThumbnailManager(Lcom/amazon/kindle/rendering/KRIFView;)V

    return-void
.end method

.method private initKRFView(Lcom/amazon/krf/platform/KRFBook;Landroid/content/Context;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 6

    const-string v0, "KRIFView - get initial settings"

    const-string v1, "KRF.createView()"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 209
    :try_start_0
    invoke-static {v1, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 210
    invoke-static {p2}, Lcom/amazon/krf/platform/KRF;->createView(Landroid/content/Context;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    .line 211
    iput-boolean v3, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfViewValid:Z

    .line 212
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 214
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 217
    new-instance v1, Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {v1, p0, v4}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;-><init>(Lcom/amazon/kindle/rendering/KRIFView;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->navigationListener:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    .line 218
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v4, v1}, Lcom/amazon/krf/platform/KRFView;->addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    .line 220
    new-instance v1, Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {v1, v4}, Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->settingsChangedListener:Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;

    .line 221
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v4, v1}, Lcom/amazon/krf/platform/KRFView;->addSettingsChangedListener(Lcom/amazon/krf/platform/SettingsChangedListener;)V

    .line 223
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFView;->weblabProvider:Lcom/amazon/kindle/rendering/KRIFWeblabProvider;

    invoke-virtual {v1, v4}, Lcom/amazon/krf/platform/KRFView;->setWeblabCallback(Lcom/amazon/krf/platform/WeblabCallback;)V

    .line 232
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    new-instance v4, Lcom/amazon/kindle/rendering/KRIFView$1;

    invoke-direct {v4, p0}, Lcom/amazon/kindle/rendering/KRIFView$1;-><init>(Lcom/amazon/kindle/rendering/KRIFView;)V

    invoke-virtual {v1, v4}, Lcom/amazon/krf/platform/KRFView;->setOrientationLockRequestListener(Lcom/amazon/krf/platform/OrientationLockRequestListener;)V

    .line 266
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {v1, v4, p0}, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/rendering/KRIFView;)V

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->transientHighlightManager:Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;

    .line 268
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 269
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    invoke-direct {v1, p3, p0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/rendering/KRIFView;)V

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 272
    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->createNewViewSettings()V

    .line 273
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    invoke-direct {p0, v1, v3}, Lcom/amazon/kindle/rendering/KRIFView;->applyInitialSettings(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/rendering/KRIFSettingsControl;)V

    .line 274
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 276
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;-><init>(Lcom/amazon/kindle/rendering/KRIFView;)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->eventHandler:Lcom/amazon/kindle/rendering/KRIFUIEventHandler;

    .line 278
    new-instance v0, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;

    invoke-direct {v0, p3}, Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->eventListener:Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;

    .line 279
    iget-object p3, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p3, v0}, Lcom/amazon/krf/platform/KRFView;->setContentDecorationEventListener(Lcom/amazon/krf/platform/ContentDecorationEventListener;)V

    .line 281
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFView;->configureYJFootnotes()V

    .line 283
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p3

    invoke-interface {p3, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 285
    iget-object p3, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-direct {p0, p3, v0}, Lcom/amazon/kindle/rendering/KRIFView;->refreshMarginalDataProvider(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/krf/platform/KRFView;)V

    .line 287
    iget-object p3, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    new-instance v0, Lcom/amazon/kindle/listeners/KRIFPluginVisibilityListener;

    invoke-direct {v0}, Lcom/amazon/kindle/listeners/KRIFPluginVisibilityListener;-><init>()V

    invoke-virtual {p3, v0}, Lcom/amazon/krf/platform/KRFView;->setPluginVisibilityLifeCycleListener(Lcom/amazon/krf/platform/PluginVisibilityLifeCycleListener;)V

    .line 289
    iget-object p3, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p3, v2}, Lcom/amazon/krf/platform/KRFView;->enableStylusBehavior(Z)V

    .line 291
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 292
    new-instance p2, Lcom/amazon/kindle/rendering/KRIFView$2;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kindle/rendering/KRIFView$2;-><init>(Lcom/amazon/kindle/rendering/KRIFView;Lcom/amazon/krf/platform/KRFBook;)V

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/util/DeviceUtils;->getPortraitSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/rendering/KRIFView;->setSafeInsets(Lcom/amazon/kcp/util/device/SafeInsets;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->initBook(Lcom/amazon/krf/platform/KRFBook;)V
    :try_end_0
    .catch Lcom/amazon/krf/exception/KRFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 314
    sget-object p2, Lcom/amazon/kindle/rendering/KRIFView;->TAG:Ljava/lang/String;

    const-string p3, "Cannot create KRF View"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfViewValid:Z

    const/4 p1, 0x0

    .line 316
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    :goto_0
    return-void
.end method

.method private isMarginalEnabled(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Z
    .locals 2

    .line 1401
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1403
    iget-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfViewValid:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1409
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1410
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 2

    .line 1283
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 1285
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    .line 1286
    const-class v1, Lcom/amazon/kindle/rendering/KRIFView;

    .line 1287
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private refreshMarginalDataProvider(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/krf/platform/KRFView;)V
    .locals 2

    .line 1377
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->isMarginalEnabled(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 1381
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFView;->m_MarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 1383
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->m_MarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    .line 1384
    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->destroy()V

    .line 1387
    :cond_1
    new-instance p2, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;

    invoke-direct {p2, p1, p0}, Lcom/amazon/kindle/rendering/BookMarginalDataHandler;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/rendering/KRIFView;)V

    .line 1388
    new-instance p1, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;-><init>(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;Landroid/content/Context;)V

    .line 1389
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->setMarginalDataProvider(Lcom/amazon/krf/platform/MarginalDataProvider;)V

    .line 1390
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    new-instance v1, Lcom/amazon/kindle/rendering/KRIFBookPageMarginalListener;

    invoke-direct {v1, p2}, Lcom/amazon/kindle/rendering/KRIFBookPageMarginalListener;-><init>(Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;)V

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/KRFView;->setMarginalListener(Lcom/amazon/krf/platform/MarginalListener;)V

    .line 1391
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->m_MarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    return-void
.end method

.method private restoreUserOrientation()V
    .locals 2

    .line 1276
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1278
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method private setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 0

    .line 1367
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private shouldConsumeMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1309
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1310
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1312
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->stopContinuousReading()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public applySettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)Z
    .locals 1

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/platform/KRFView;->setSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V
    :try_end_0
    .catch Lcom/amazon/krf/exception/InvalidSettingsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public changeDecorationProviderState(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;Z)V
    .locals 2

    .line 1053
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;->getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne v0, v1, :cond_0

    .line 1054
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setPopularHighlightsControl(Z)V

    .line 1058
    new-instance p2, Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;-><init>(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 1059
    invoke-direct {p0, p2}, Lcom/amazon/kindle/rendering/KRIFView;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method

.method public changeFooterVisibility(ZZ)V
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->m_MarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->changeFooterVisibility(Z)V

    if-eqz p2, :cond_0

    .line 1092
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFView;->reloadCurrentPageMarginals()V

    :cond_0
    return-void
.end method

.method public changeHeaderVisibility(ZZ)V
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->m_MarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->changeHeaderVisibility(Z)V

    if-eqz p2, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFView;->reloadCurrentPageMarginals()V

    :cond_0
    return-void
.end method

.method public closeComponentViewer()V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->closeComponentViewer()Z

    return-void
.end method

.method closeKRFView()V
    .locals 3

    const/4 v0, 0x1

    .line 529
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->isClosed:Z

    .line 530
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->textSelectors:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 531
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;

    .line 532
    invoke-static {v2}, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;->access$500(Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;)V

    goto :goto_0

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->textSelectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->navigationListener:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    if-eqz v1, :cond_2

    .line 537
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v2, v1}, Lcom/amazon/krf/platform/KRFView;->removeNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    .line 538
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->navigationListener:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-virtual {v1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->onBookClose()V

    .line 540
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->settingsChangedListener:Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;

    if-eqz v1, :cond_3

    .line 541
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v2, v1}, Lcom/amazon/krf/platform/KRFView;->removeSettingsChangedListener(Lcom/amazon/krf/platform/SettingsChangedListener;)V

    .line 544
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->m_MarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    const/4 v2, 0x0

    .line 545
    iput-object v2, p0, Lcom/amazon/kindle/rendering/KRIFView;->m_MarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    if-eqz v1, :cond_4

    .line 547
    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->destroy()V

    .line 550
    :cond_4
    iput-object v2, p0, Lcom/amazon/kindle/rendering/KRIFView;->orientationLockRequest:Lcom/amazon/krf/platform/OrientationLockRequest;

    .line 551
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->orientationLockRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 553
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfViewValid:Z

    .line 554
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 556
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFView;->TAG:Ljava/lang/String;

    const-string v2, "Exception while calling krfView.dispose()"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 558
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public containsPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 630
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->contains(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method createTextSelector(I)Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;
    .locals 2

    .line 919
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->isClosed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->createSelection()Lcom/amazon/krf/platform/Selection;

    move-result-object v0

    .line 924
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;-><init>(Lcom/amazon/kindle/rendering/KRIFView;Lcom/amazon/krf/platform/Selection;)V

    .line 927
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;->setHighlightSelectionStyle(I)V

    .line 931
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->textSelectors:Ljava/util/List;

    if-nez p1, :cond_1

    .line 932
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->textSelectors:Ljava/util/List;

    .line 934
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->textSelectors:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public enableKrfAccessibilityPageTurnSupport()V
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 944
    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/KRFView;->setAccessibilityPageTurnSupport(Z)V

    .line 945
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    sget-object v1, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->TEXT_WITH_EXTRA_INFO:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/KRFView;->setContentAccessibilityVerbosity(Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;)V

    :cond_0
    return-void
.end method

.method public enablePageCurl(Z)V
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 960
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 961
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object p1

    sget-object v0, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_TURN_ANIMATION:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {p1, v0}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->aaSettingVisible(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 962
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    sget-object v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->CURL:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/KRFView;->setPageTransitionStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)V

    .line 963
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    sget-object v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->CURL:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setPageTransitionStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    goto :goto_0

    .line 964
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/DeviceUtils;->isEinkScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 965
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    sget-object v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->NONE:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/KRFView;->setPageTransitionStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)V

    .line 966
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    sget-object v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->NONE:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setPageTransitionStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    goto :goto_0

    .line 968
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    sget-object v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->HORIZONTAL_SLIDE:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/KRFView;->setPageTransitionStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)V

    .line 969
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    sget-object v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->HORIZONTAL_SLIDE:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setPageTransitionStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    :cond_2
    :goto_0
    return-void
.end method

.method public finishPan()V
    .locals 0

    return-void
.end method

.method public finishPan(Z)V
    .locals 0

    return-void
.end method

.method public finishZoom()V
    .locals 0

    return-void
.end method

.method public getColorTheme(Lcom/amazon/android/docviewer/KindleDocColorMode;)Lcom/amazon/krf/platform/theme/ColorTheme;
    .locals 4

    .line 755
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    .line 760
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFView$3;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    const-string v3, "Night"

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 789
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krf/platform/theme/ColorThemeRepository;->getColorThemeByName(Ljava/lang/String;)Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Green"

    .line 786
    invoke-static {v0}, Lcom/amazon/krf/platform/theme/ColorThemeRepository;->getColorThemeByName(Ljava/lang/String;)Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "Sepia"

    .line 783
    invoke-static {v0}, Lcom/amazon/krf/platform/theme/ColorThemeRepository;->getColorThemeByName(Ljava/lang/String;)Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object v0

    goto :goto_0

    .line 778
    :cond_2
    invoke-static {v3}, Lcom/amazon/krf/platform/theme/ColorThemeRepository;->getColorThemeByName(Ljava/lang/String;)Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object v0

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 779
    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/theme/ColorTheme;->setInkColorContrastRatio(F)V

    const v1, 0x3fa66666    # 1.3f

    .line 780
    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/theme/ColorTheme;->setFillColorContrastRatio(F)V

    goto :goto_0

    .line 770
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v3, "Custom"

    :cond_4
    invoke-static {v3}, Lcom/amazon/krf/platform/theme/ColorThemeRepository;->getColorThemeByName(Ljava/lang/String;)Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "Default"

    .line 764
    invoke-static {v0}, Lcom/amazon/krf/platform/theme/ColorThemeRepository;->getColorThemeByName(Ljava/lang/String;)Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object v0

    .line 765
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getLinkColor()I

    move-result v1

    const-string v2, "link_unvisited"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/krf/platform/theme/ColorTheme;->setColor(Ljava/lang/String;I)Lcom/amazon/krf/platform/theme/ColorTheme;

    :goto_0
    if-eqz v0, :cond_7

    .line 795
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getTextColor()I

    move-result v1

    const-string v2, "ink"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/krf/platform/theme/ColorTheme;->setColor(Ljava/lang/String;I)Lcom/amazon/krf/platform/theme/ColorTheme;

    .line 797
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    .line 800
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 801
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/renderingmodule/R$color;->comics_background_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result p1

    :goto_1
    const-string v2, "fill"

    .line 800
    invoke-virtual {v0, v2, p1}, Lcom/amazon/krf/platform/theme/ColorTheme;->setColor(Ljava/lang/String;I)Lcom/amazon/krf/platform/theme/ColorTheme;

    .line 804
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 805
    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/theme/ColorTheme;->setContrastAdjustmentEnabled(Z)V

    :cond_7
    return-object v0
.end method

.method public getConfigurationOrientation()I
    .locals 3

    .line 1262
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1266
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1269
    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->convertScreenToConfigurationOrientation(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getCurrentPageEndPosition()Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentPageStartPosition()Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getElementsOnCurrentPage(I)Ljava/util/Vector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getPageElements()[Lcom/amazon/krf/platform/element/PageElement;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 818
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 822
    :cond_0
    array-length v1, v0

    .line 823
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 833
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/amazon/krf/platform/element/PageElement;->getType()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 834
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/amazon/krf/platform/element/PageElement;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v4

    .line 835
    invoke-virtual {v4}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v4

    long-to-int v5, v4

    .line 836
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/amazon/krf/platform/element/PageElement;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v4

    .line 837
    invoke-virtual {v4}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v6

    long-to-int v4, v6

    .line 838
    aget-object v6, v0, v3

    invoke-virtual {v6}, Lcom/amazon/krf/platform/element/PageElement;->getCoveringRectangles()[Landroid/graphics/RectF;

    move-result-object v6

    .line 839
    aget-object v7, v0, v3

    invoke-virtual {v7}, Lcom/amazon/krf/platform/element/PageElement;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 840
    new-instance v7, Lcom/amazon/kindle/rendering/KRIFWordPageElement;

    aget-object v8, v0, v3

    check-cast v8, Lcom/amazon/krf/platform/element/TextPageElement;

    .line 841
    invoke-virtual {v8}, Lcom/amazon/krf/platform/element/TextPageElement;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v4, v8, v6}, Lcom/amazon/kindle/rendering/KRIFWordPageElement;-><init>(IILjava/lang/String;[Landroid/graphics/RectF;)V

    .line 840
    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 843
    :cond_1
    aget-object v7, v0, v3

    invoke-virtual {v7}, Lcom/amazon/krf/platform/element/PageElement;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 844
    new-instance v7, Lcom/amazon/kindle/rendering/KRIFPageElement;

    invoke-direct {v7, v5, v4, v8, v6}, Lcom/amazon/kindle/rendering/KRIFPageElement;-><init>(III[Landroid/graphics/RectF;)V

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2

    .line 819
    :cond_4
    :goto_2
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    return-object p1
.end method

.method public getFooterRect()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderRect()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    return-object v0
.end method

.method public getLimitations()Lcom/amazon/krf/platform/KRFCapabilities;
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getCapabilities()Lcom/amazon/krf/platform/KRFCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getMarginValue()F
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->getMarginValue()F

    move-result v0

    return v0
.end method

.method public getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    .line 1560
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getPageTurnOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getPlatformView()Lcom/amazon/krf/platform/KRFView;
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    return-object v0
.end method

.method public getReadingRulerSettings()Lcom/amazon/krf/platform/ReadingRulerSettings;
    .locals 1

    .line 1687
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->getReadingRulerSettings()Lcom/amazon/krf/platform/ReadingRulerSettings;

    move-result-object v0

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScaleY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScrollLockManager()Lcom/amazon/android/docviewer/ScrollLockManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettings()Lcom/amazon/krf/platform/ViewSettings;
    .locals 1

    .line 725
    sget-object v0, Lcom/amazon/krf/platform/KRFView$Orientation;->CURRENT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    return-object v0
.end method

.method public getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    return-object p1
.end method

.method public getSpeechBreakers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/SpeechBreaker;",
            ">;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getSpeechBreakers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViewport()Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeAccessibilityMixin(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 1111
    iput-object p1, p0, Lcom/amazon/android/docviewer/KindleDocView;->accessibilityMixin:Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;

    return-void
.end method

.method public isCoverPageAvailable()Z
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->canGoToCoverPage()Z

    move-result v0

    return v0
.end method

.method public isDoneWithInitialDraw()Z
    .locals 1

    .line 610
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->isDoneWithInitialDraw:Z

    return v0
.end method

.method public isKrfAccessibilityPageTurnSupportEnabled()Z
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->isAccessibilityPageTurnSupport()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNextPageAvailable()Z
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->canGoToNextPage()Z

    move-result v0

    return v0
.end method

.method public isPageTurnInteractionDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrevPageAvailable()Z
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->canGoToPreviousPage()Z

    move-result v0

    return v0
.end method

.method public isZoomed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public navigateToBeginning()V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->goToStartReadingPage()Z

    return-void
.end method

.method public navigateToCoverPage()V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->goToCoverPage()Z

    :cond_0
    return-void
.end method

.method public navigateToLocation(J)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/platform/KRFView;->goToLocation(J)Z

    return-void
.end method

.method public navigateToNextPage()V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->goToNextPage()Z

    :cond_0
    return-void
.end method

.method public navigateToPercent(D)V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/platform/KRFView;->goToPercent(D)Z

    :cond_0
    return-void
.end method

.method public navigateToPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 641
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/rendering/KRIFView;->navigateToPosition(IZ)V

    return-void
.end method

.method public navigateToPosition(IZ)V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 659
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p2, p1}, Lcom/amazon/krf/platform/KRFView;->goToPositionOnLoad(Lcom/amazon/krf/platform/Position;)Z

    goto :goto_0

    .line 663
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p2, p1}, Lcom/amazon/krf/platform/KRFView;->contains(Lcom/amazon/krf/platform/Position;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 664
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p2, p1}, Lcom/amazon/krf/platform/KRFView;->goToPosition(Lcom/amazon/krf/platform/Position;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public navigateToPreviousPage()V
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->goToPreviousPage()Z

    :cond_0
    return-void
.end method

.method public onActivityLifecycleEvent(Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1513
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isKindleIllustratedSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1514
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1515
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1516
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFView$3;->$SwitchMap$com$amazon$kcp$reader$ReaderActivityLifecycleEvent$Type:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1521
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p1, v1}, Lcom/amazon/krf/platform/KRFView;->pause(I)V

    goto :goto_0

    .line 1518
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p1, v1}, Lcom/amazon/krf/platform/KRFView;->resume(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onColorModeChanged(Lcom/amazon/kindle/event/ColorModeChangeEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 1481
    invoke-virtual {p1}, Lcom/amazon/kindle/event/ColorModeChangeEvent;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1132
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1134
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->orientationLockRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1135
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->orientationLockRequest:Lcom/amazon/krf/platform/OrientationLockRequest;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/OrientationLockRequest;->onComplete()V

    .line 1136
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->orientationLockRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1139
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfViewValid:Z

    if-nez p1, :cond_1

    return-void

    .line 1143
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->refreshLineSettings(Landroid/content/Context;)V

    .line 1144
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    .line 1145
    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object p1

    .line 1146
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applySettings()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1151
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1152
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1120
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1121
    const-class v0, Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1126
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1127
    const-class v0, Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1166
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->shouldConsumeMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1190
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->shouldConsumeMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onReaderLayoutEvent(Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    if-eqz p1, :cond_2

    .line 1490
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-eqz v0, :cond_2

    .line 1492
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isKindleIllustratedSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1493
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1494
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFView$3;->$SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getEventType()Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1502
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getEventType()Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1499
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p1, v2}, Lcom/amazon/krf/platform/KRFView;->resume(I)V

    goto :goto_0

    .line 1496
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p1, v2}, Lcom/amazon/krf/platform/KRFView;->pause(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->mDownX:F

    .line 1198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->mDownY:F

    .line 1201
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/amazon/kindle/rendering/KRIFView;->mDownX:F

    iget v4, p0, Lcom/amazon/kindle/rendering/KRIFView;->mDownY:F

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/amazon/kindle/rendering/KRIFView;->findDistance(FFFF)F

    move-result v0

    .line 1209
    iget v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1210
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFView;->isMoving:Z

    .line 1214
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 1222
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->isMoving:Z

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 1223
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFView;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1225
    invoke-virtual {p1, v0, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 1229
    :cond_2
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->isMoving:Z

    :cond_3
    return v2
.end method

.method openComponentViewer(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 988
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;

    move-result-object p2

    .line 989
    new-instance v0, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v0, p1, p2}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    .line 991
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/KRFView;->openComponentViewer(Lcom/amazon/krf/platform/PositionRange;)Z

    return-void
.end method

.method public panPage(FF)V
    .locals 0

    return-void
.end method

.method public panPageByReferencePoint(FF)V
    .locals 0

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/KRIFView;->updateTransientHighlights(Lcom/amazon/krf/platform/PositionRange;)V

    return-void
.end method

.method public refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1034
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;->getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;->getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->WordWise:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne v0, v1, :cond_1

    .line 1037
    :cond_0
    new-instance v0, Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;-><init>(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 1039
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFView;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 1041
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFView;->refresh()V

    return-void
.end method

.method reinitialize(Lcom/amazon/krf/platform/KRFBook;)Z
    .locals 3

    .line 578
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFView;->closeKRFView()V

    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->isClosed:Z

    .line 580
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 582
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {p0, p1, v1, v2}, Lcom/amazon/kindle/rendering/KRIFView;->initKRFView(Lcom/amazon/krf/platform/KRFBook;Landroid/content/Context;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    .line 585
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->selectionChangeListener:Lcom/amazon/krf/platform/SelectionChangeListener;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->setSelectionListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V

    .line 586
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->selectionHandleStyle:Lcom/amazon/krf/platform/SelectionState$HandleStyle;

    iget v1, p0, Lcom/amazon/kindle/rendering/KRIFView;->selectionColor:I

    invoke-virtual {p0, p1, v1}, Lcom/amazon/kindle/rendering/KRIFView;->setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;I)V

    .line 590
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFView;->sendBufferedNavigationEvents()V

    .line 592
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public reloadCurrentPageMarginals()V
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->m_MarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->reloadCurrentPageMarginals()V

    :cond_0
    return-void
.end method

.method public resetZoom(FF)V
    .locals 0

    return-void
.end method

.method sendBufferedNavigationEvents()V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->navigationListener:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->sendBufferedEventsOnKrifViewInitializationComplete()V

    :cond_0
    return-void
.end method

.method public setDocReferencePoint(FF)V
    .locals 0

    return-void
.end method

.method public setDoneWithInitialDraw(Z)V
    .locals 0

    .line 614
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->isDoneWithInitialDraw:Z

    return-void
.end method

.method public setPageTurnOffset(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;I)V
    .locals 0

    return-void
.end method

.method public setReadingRulerSettings(Lcom/amazon/krf/platform/ReadingRulerSettings;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->setReadingRulerSettings(Lcom/amazon/krf/platform/ReadingRulerSettings;)V

    return-void
.end method

.method public setSafeInsets(Lcom/amazon/kcp/util/device/SafeInsets;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 325
    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getSafeInsetsPairForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;Landroid/content/Context;Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsetsPair;

    move-result-object p1

    .line 327
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->currentSafeInsetsPair:Lcom/amazon/kcp/util/device/SafeInsetsPair;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->currentSafeInsetsPair:Lcom/amazon/kcp/util/device/SafeInsetsPair;

    .line 329
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krifSettingsControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->getPortraitSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v1

    .line 330
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->getLandscapeSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p1

    .line 329
    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setSafeInsetMargins(Lcom/amazon/kcp/util/device/SafeInsets;Lcom/amazon/kcp/util/device/SafeInsets;)V

    :cond_0
    return-void
.end method

.method public setSelectionListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 864
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->selectionChangeListener:Lcom/amazon/krf/platform/SelectionChangeListener;

    .line 865
    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->addSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V

    :cond_0
    return-void
.end method

.method public setSelectionRange(Lcom/amazon/krf/platform/PositionRange;)V
    .locals 1

    if-nez p1, :cond_0

    .line 878
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFView;->clearSelection()Z

    goto :goto_0

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->setSelectionRange(Lcom/amazon/krf/platform/PositionRange;)V

    :goto_0
    return-void
.end method

.method public setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;I)V
    .locals 2

    .line 893
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->selectionHandleStyle:Lcom/amazon/krf/platform/SelectionState$HandleStyle;

    .line 894
    iput p2, p0, Lcom/amazon/kindle/rendering/KRIFView;->selectionColor:I

    .line 895
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    .line 896
    sget-object v1, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;->SQUARE:Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    invoke-virtual {v0, p1, v1, p2}, Lcom/amazon/krf/platform/KRFView;->setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;Lcom/amazon/krf/platform/SelectionState$LoupeStyle;I)V

    :cond_0
    return-void
.end method

.method public setTitleVisibility(ZZ)V
    .locals 0

    return-void
.end method

.method public startPan()V
    .locals 0

    return-void
.end method

.method public startZoom()V
    .locals 0

    return-void
.end method

.method public turnPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z
    .locals 0

    .line 1099
    sget-object p2, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, p2, :cond_0

    .line 1100
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFView;->goToNextPage()Z

    move-result p1

    return p1

    .line 1102
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->krfView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFView;->goToPreviousPage()Z

    move-result p1

    return p1
.end method

.method public updateTransientHighlights(Lcom/amazon/krf/platform/PositionRange;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 902
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    .line 903
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    .line 904
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView;->transientHighlightManager:Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/rendering/KRIFTransientHighlightManager;->updateTransientHighlights(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_0
    return-void
.end method

.method public zoom(FFF)V
    .locals 0

    return-void
.end method
