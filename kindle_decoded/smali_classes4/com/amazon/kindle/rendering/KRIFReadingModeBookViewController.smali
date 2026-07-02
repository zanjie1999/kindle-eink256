.class public final Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;
.super Ljava/lang/Object;
.source "KRIFReadingModeBookViewController.kt"

# interfaces
.implements Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;
.implements Lcom/amazon/kindle/yj/controller/IResourceHost;
.implements Lcom/amazon/kindle/contentprovider/TtsBookBridge;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final colorModeToColorThemes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentBook:Lcom/amazon/kindle/krx/content/IBook;

.field private isClosed:Z

.field private mBackupFooterContentType:Ljava/lang/String;

.field private mContentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

.field private mContentMissingListener:Lcom/amazon/kindle/listeners/KRIFContentMissingListener;

.field private mContext:Landroid/content/Context;

.field private mKRFBook:Lcom/amazon/krf/platform/KRFBook;

.field private mKRFReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

.field private mKRFView:Lcom/amazon/krf/platform/KRFView;

.field private volatile mKRFViewValid:Z

.field private mKRIFBookItem:Lcom/amazon/kindle/rendering/KRIFBookItem;

.field private mLandscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

.field private mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

.field private mMainBookPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private mMarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

.field private mNavigationListener:Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;

.field private mPageChangeDelegate:Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;

.field private mParentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mPortraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

.field private mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

.field private mReadingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

.field private mSourceActivity:Landroid/app/Activity;

.field private mTicrDocViewerEventHandler:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

.field private mToc:Lcom/amazon/kindle/krx/reader/ITableOfContents;

.field private mUserSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private ttsReaderNavigationListener:Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {v0}, Lcom/amazon/krf/platform/ViewSettings;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 112
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {v0}, Lcom/amazon/krf/platform/ViewSettings;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 113
    new-instance v0, Lcom/amazon/krf/platform/ReadingRulerSettings;

    invoke-direct {v0}, Lcom/amazon/krf/platform/ReadingRulerSettings;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mReadingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    .line 114
    const-class v0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(KRIFReading\u2026ewController::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "WHITE"

    const-string v2, "Default"

    .line 132
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Night"

    const-string v2, "BLACK"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "NIGHT"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SEPIA"

    const-string v2, "Sepia"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "GREEN"

    const-string v2, "Green"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->colorModeToColorThemes:Ljava/util/HashMap;

    .line 134
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$touchExplorationStateChangeListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$touchExplorationStateChangeListener$1;-><init>(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    return-void
.end method

.method public static final synthetic access$getMKRFBook$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/KRFBook;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mKRFBook"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMKRFView$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/KRFView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mKRFView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMKRFViewValid$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFViewValid:Z

    return p0
.end method

.method public static final synthetic access$getMKRIFBookItem$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/kindle/rendering/KRIFBookItem;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRIFBookItem:Lcom/amazon/kindle/rendering/KRIFBookItem;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mKRIFBookItem"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMLandscapeViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    return-object p0
.end method

.method public static final synthetic access$getMPageChangeDelegate$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPageChangeDelegate:Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mPageChangeDelegate"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMPortraitViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    return-object p0
.end method

.method public static final synthetic access$getMReadingRulerSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ReadingRulerSettings;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mReadingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    return-object p0
.end method

.method public static final synthetic access$getMUserSettingsController$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mUserSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mUserSettingsController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "messageQueue"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$handleTouchExplorationEnabled(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->handleTouchExplorationEnabled()V

    return-void
.end method

.method public static final synthetic access$setKRFViewSettings(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->setKRFViewSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    return-void
.end method

.method private final applySettingsBasedOnConfiguration(Landroid/content/res/Configuration;ZLcom/amazon/krf/platform/Position;)V
    .locals 11

    .line 310
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFViewValid:Z

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 315
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v0, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 318
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    .line 319
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;->getInstance()Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mSourceActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    iget-object v8, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRIFBookItem:Lcom/amazon/kindle/rendering/KRIFBookItem;

    if-eqz v8, :cond_b

    invoke-interface {v2, v3, v4, v8}, Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;->getMultiColumnStatus(ILandroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    move-result-object v2

    .line 320
    sget-object v3, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->ENFORCED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->USER_SPECIFIED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    if-ne v2, v3, :cond_2

    const-string v2, "userSettingsController"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getColumnCount()I

    move-result v1

    if-le v1, v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-nez p2, :cond_3

    .line 323
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings;->isAutomaticColumnModeEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_4

    .line 324
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setAutomaticColumnModeEnabled(Z)V

    .line 325
    iput-boolean v4, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_4
    if-nez p2, :cond_5

    .line 328
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings;->isAutomaticColumnModeEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_6

    .line 329
    :cond_5
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setAutomaticColumnModeEnabled(Z)V

    .line 330
    iput-boolean v4, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 333
    :cond_6
    iget-boolean v0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->setKRFViewSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    .line 334
    :cond_7
    iget-boolean v0, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->setKRFViewSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    .line 336
    :cond_8
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mParentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_9

    const-string v0, "it"

    .line 341
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v10, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;

    move-object v1, v10

    move-object v3, p0

    move-object v4, p0

    move v5, p2

    move-object v8, p1

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;-><init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;ZLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/res/Configuration;Lcom/amazon/krf/platform/Position;)V

    invoke-virtual {v0, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 393
    :cond_9
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const-string p2, "Parent view should be non null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string p1, "mParentView"

    .line 336
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_b
    const-string p1, "mKRIFBookItem"

    .line 319
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_c
    const-string p1, "mSourceActivity"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method

.method static synthetic applySettingsBasedOnConfiguration$default(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;Landroid/content/res/Configuration;ZLcom/amazon/krf/platform/Position;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 309
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->applySettingsBasedOnConfiguration(Landroid/content/res/Configuration;ZLcom/amazon/krf/platform/Position;)V

    return-void
.end method

.method private final cloneMainBookSettings(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 4

    .line 258
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-nez v0, :cond_0

    .line 259
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const-string v0, "Given reader activity is not holding KRIFDocViewer"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const-string v1, "readerActivity.docViewer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kindle/rendering/KRIFView;

    if-nez v0, :cond_1

    .line 264
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const-string v0, "KRIFDocViewer is not holding valid KRIFView"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 268
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFView;

    .line 271
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v1

    const-string v2, "krifView.krifSettingsControl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->getViewSettings()Landroid/util/Pair;

    move-result-object v1

    .line 272
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/amazon/krf/platform/ViewSettings;

    .line 273
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/krf/platform/ViewSettings;

    const-string v3, "portraitSettingsToClone"

    .line 275
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/amazon/kindle/util/ViewSettingsExtensionsKt;->cloneForRecaps(Lcom/amazon/krf/platform/ViewSettings;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    const-string v3, "landscapeSettingsToClone"

    .line 276
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/kindle/util/ViewSettingsExtensionsKt;->cloneForRecaps(Lcom/amazon/krf/platform/ViewSettings;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 277
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getReadingRulerSettings()Lcom/amazon/krf/platform/ReadingRulerSettings;

    move-result-object v0

    const-string v3, "krifView.readingRulerSettings"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/kindle/util/ReadingRulerSettingsExtensionsKt;->cloneForRecaps(Lcom/amazon/krf/platform/ReadingRulerSettings;)Lcom/amazon/krf/platform/ReadingRulerSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mReadingRulerSettings:Lcom/amazon/krf/platform/ReadingRulerSettings;

    .line 280
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$bool;->book_reader_has_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 284
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {p0, p1, v2}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->updateTopMarginSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/ViewSettings;)V

    .line 285
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->updateTopMarginSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/ViewSettings;)V

    :cond_2
    return-void

    .line 268
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kindle.rendering.KRIFView"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final createBookView(Ljava/lang/Long;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->initKRFBook(Lcom/amazon/kindle/krx/content/IBook;)V

    if-eqz p1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "mKRFBook"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object p1, v0

    .line 188
    :goto_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->initKRFView(Lcom/amazon/krf/platform/Position;)V

    .line 189
    new-instance p1, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    new-instance v1, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;

    invoke-direct {v1}, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;-><init>()V

    invoke-direct {p1, v1}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;-><init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mTicrDocViewerEventHandler:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    .line 193
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mUserSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getFooterContentType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mUserSettingsController.footerContentType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mBackupFooterContentType:Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->initMarginalDataProvider()V

    .line 197
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getTocForReadingMode()Lcom/amazon/kindle/krx/reader/ITableOfContents;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mToc:Lcom/amazon/kindle/krx/reader/ITableOfContents;

    .line 198
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const-string p1, "mKRFView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :try_start_2
    const-string p1, "mUserSettingsController"

    .line 193
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :try_start_3
    const-string p1, "currentBook"

    .line 186
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_0
    move-exception p1

    .line 200
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const-string v2, "openBook failed with reason"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final handleReaderActivity(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 232
    instance-of v0, p1, Lcom/amazon/kcp/reader/ReaderActivity;

    if-nez v0, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    .line 240
    check-cast p1, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->cloneMainBookSettings(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 243
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    const-string p2, "sdk.readerManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const-string p2, "Unable to get current page start position. Falling back to MRPR"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-interface {p3}, Lcom/amazon/kindle/krx/content/IBook;->getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;

    move-result-object p1

    const-string p2, "book.localBookData"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/ILocalBookData;->getLastPositionRead()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    const-string p2, "run {\n                Lo\u2026ositionRead\n            }"

    .line 243
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mMainBookPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 p1, 0x1

    .line 253
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderController;->closeCurrentBook(Z)V

    goto :goto_2

    .line 236
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.amazon.kcp.reader.ReaderController"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const-string p2, "ReaderActivity Context is invalid"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private final handleTouchExplorationEnabled()V
    .locals 5

    .line 212
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->isVerticalScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    const-string v2, "mKRFView.positionRange"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    const-string v2, "mKRFView.positionRange.firstPosition"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    .line 216
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->close()V

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/amazon/krf/platform/ViewSettings;->setVerticalScrollEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, v4}, Lcom/amazon/krf/platform/ViewSettings;->setVerticalScrollEnabled(Z)V

    .line 221
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->createBookView(Ljava/lang/Long;)Landroid/view/View;

    move-result-object v0

    .line 224
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPageChangeDelegate:Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;->updateBookView(Landroid/view/View;)V

    return-void

    :cond_1
    const-string v0, "mPageChangeDelegate"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "mKRFView"

    .line 215
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final initAccessibilityManager()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mSourceActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void

    :cond_0
    const-string v0, "accessibilityManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "mSourceActivity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final initKRFBook(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 447
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "BookIdUtils.parse(book.b\u2026okId should not be null\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    new-instance v1, Ljava/io/File;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/amazon/kindle/rendering/KRIFContentLoader;->createBookItemFromFile(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/rendering/KRIFBookItem;

    move-result-object p1

    const-string v0, "KRIFContentLoader.create\u2026e(book.filename), bookId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRIFBookItem:Lcom/amazon/kindle/rendering/KRIFBookItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "mKRIFBookItem"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 450
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->openBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object p1

    const-string v2, "mKRIFBookItem.openBook()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    .line 454
    new-instance p1, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRIFBookItem:Lcom/amazon/kindle/rendering/KRIFBookItem;

    if-eqz v2, :cond_3

    invoke-direct {p1, p0, v2}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;-><init>(Lcom/amazon/kindle/yj/controller/IResourceHost;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mContentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    .line 455
    new-instance p1, Lcom/amazon/kindle/listeners/KRIFContentMissingListener;

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mContentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    if-eqz v0, :cond_2

    invoke-direct {p1, v0}, Lcom/amazon/kindle/listeners/KRIFContentMissingListener;-><init>(Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mContentMissingListener:Lcom/amazon/kindle/listeners/KRIFContentMissingListener;

    .line 456
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/KRFBook;->setContentMissingListener(Lcom/amazon/krf/platform/ContentMissingListener;)V

    return-void

    :cond_0
    const-string p1, "mContentMissingListener"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :try_start_2
    const-string p1, "mKRFBook"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :try_start_3
    const-string p1, "mContentAvailabilityController"

    .line 455
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 454
    :cond_3
    :try_start_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 450
    :cond_4
    :try_start_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 447
    :cond_5
    :try_start_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BookId should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    .line 458
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const-string v1, "initKRFBook failed with reason"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFViewValid:Z

    .line 460
    throw p1
.end method

.method private final initKRFView(Lcom/amazon/krf/platform/Position;)V
    .locals 12

    const/4 v0, 0x0

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mSourceActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "mSourceActivity"

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    :try_start_1
    invoke-static {v1}, Lcom/amazon/krf/platform/KRF;->createView(Landroid/content/Context;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v1

    const-string v4, "KRF.createView(mSourceActivity)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    const/4 v1, 0x1

    .line 467
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFViewValid:Z

    .line 468
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "mKRFView"

    if-eqz v4, :cond_12

    :try_start_2
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    new-instance v4, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;

    invoke-direct {v4, p0}, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;-><init>(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)V

    iput-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mNavigationListener:Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;

    .line 471
    iget-object v6, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v6, :cond_11

    if-eqz v4, :cond_10

    invoke-virtual {v6, v4}, Lcom/amazon/krf/platform/KRFView;->addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    .line 474
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "mKRFBook"

    if-eqz v4, :cond_f

    :try_start_3
    iget-object v6, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mMainBookPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v6, :cond_e

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v4, v6, v7}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object v4

    .line 475
    iget-object v6, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v6, :cond_d

    iget-object v7, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v8, "mKRFReadingMode"

    if-eqz v7, :cond_c

    :try_start_4
    invoke-interface {v6, v4, v7}, Lcom/amazon/krf/platform/KRFBook;->getEquivalentPositionInReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object v4

    const-string v6, "equivalentPosition"

    .line 478
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v6

    const-wide/16 v9, -0x1

    cmp-long v11, v6, v9

    if-nez v11, :cond_2

    .line 479
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-eqz v6, :cond_0

    invoke-interface {v4, v6}, Lcom/amazon/krf/platform/KRFBookInfo;->getFirstPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :cond_1
    :try_start_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v4

    .line 484
    :goto_1
    :try_start_6
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mContentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    if-eqz v4, :cond_b

    iget-object v6, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v6, :cond_a

    invoke-interface {v6, p1}, Lcom/amazon/krf/platform/KRFBook;->getContainerIDsForPosition(Lcom/amazon/krf/platform/Position;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    :goto_2
    invoke-interface {v4, v5}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->init(Ljava/util/List;)V

    .line 487
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v4, v0}, Lcom/amazon/krf/platform/ViewSettings;->setSelectionEnabled(Z)V

    .line 488
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v4, v0}, Lcom/amazon/krf/platform/ViewSettings;->setSelectionEnabled(Z)V

    .line 490
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-eqz v5, :cond_9

    invoke-virtual {v4, v5}, Lcom/amazon/krf/platform/ViewSettings;->setReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)V

    .line 491
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-eqz v5, :cond_8

    invoke-virtual {v4, v5}, Lcom/amazon/krf/platform/ViewSettings;->setReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)V

    .line 493
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 494
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mParentView:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    .line 495
    new-instance v5, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$initKRFView$$inlined$let$lambda$1;

    invoke-direct {v5, p0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$initKRFView$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_3

    :cond_5
    const-string p1, "mParentView"

    .line 494
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3

    .line 513
    :cond_6
    :goto_3
    :try_start_7
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mSourceActivity:Landroid/app/Activity;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mSourceActivity.resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const-string v3, "mSourceActivity.resources.configuration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, p1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->applySettingsBasedOnConfiguration(Landroid/content/res/Configuration;ZLcom/amazon/krf/platform/Position;)V

    return-void

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v3

    .line 491
    :cond_8
    :try_start_8
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v3

    .line 490
    :cond_9
    :try_start_9
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v3

    .line 484
    :cond_a
    :try_start_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v3

    :cond_b
    :try_start_b
    const-string p1, "mContentAvailabilityController"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v3

    .line 475
    :cond_c
    :try_start_c
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v3

    :cond_d
    :try_start_d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v3

    :cond_e
    :try_start_e
    const-string p1, "mMainBookPageStartPosition"

    .line 474
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v3

    :cond_f
    :try_start_f
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v3

    :cond_10
    :try_start_10
    const-string p1, "mNavigationListener"

    .line 471
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v3

    :cond_11
    :try_start_11
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v3

    .line 468
    :cond_12
    :try_start_12
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw v3

    .line 466
    :cond_13
    :try_start_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    throw v3

    :catchall_0
    move-exception p1

    .line 516
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const-string v2, "initKRFView failed with reason"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFViewValid:Z

    .line 518
    throw p1
.end method

.method private final initMarginalDataProvider()V
    .locals 13

    .line 554
    new-instance v10, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    const/4 v11, 0x0

    if-eqz v0, :cond_4

    invoke-direct {v10, p0, v0}, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;-><init>(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;Landroid/content/Context;)V

    .line 555
    new-instance v12, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v9, 0x0

    move-object v0, v12

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;-><init>(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;Landroid/content/Context;ZZZLcom/amazon/android/docviewer/mobi/BookPageMarginal;Lcom/amazon/kindle/rendering/marginals/MarginalGroupFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    .line 557
    invoke-virtual {v12, v0}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->changeHeaderVisibility(Z)V

    .line 558
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    const-string v1, "mKRFView"

    if-eqz v0, :cond_2

    invoke-virtual {v0, v12}, Lcom/amazon/krf/platform/KRFView;->setMarginalDataProvider(Lcom/amazon/krf/platform/MarginalDataProvider;)V

    .line 560
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/amazon/kindle/rendering/KRIFBookPageMarginalListener;

    invoke-direct {v1, v10}, Lcom/amazon/kindle/rendering/KRIFBookPageMarginalListener;-><init>(Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;)V

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/KRFView;->setMarginalListener(Lcom/amazon/krf/platform/MarginalListener;)V

    .line 562
    iput-object v12, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mMarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    .line 564
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mTicrDocViewerEventHandler:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v10}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->initialize(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V

    return-void

    :cond_0
    const-string v0, "mTicrDocViewerEventHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 560
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 558
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 555
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 554
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11
.end method

.method private final setKRFViewSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFViewValid:Z

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/platform/KRFView;->setSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    goto :goto_0

    :cond_0
    const-string p1, "mKRFView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateTopMarginSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/ViewSettings;)V
    .locals 3

    .line 290
    invoke-virtual {p2}, Lcom/amazon/krf/platform/ViewSettings;->isVerticalScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-virtual {p2}, Lcom/amazon/krf/platform/ViewSettings;->getBottomMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v1

    const-string v2, "krfViewSettingsToClone.bottomMargin"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v1

    invoke-virtual {p2}, Lcom/amazon/krf/platform/ViewSettings;->getBottomMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachResourceContainer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "assetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "filePath"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 526
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/amazon/krf/platform/KRFBook;->attachContainer(Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    const-string p1, "mKRFBook"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public close()V
    .locals 4

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->ttsReaderNavigationListener:Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;->onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_0

    :cond_0
    const-string v0, "currentBook"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 533
    :try_start_1
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->isClosed:Z

    .line 534
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRIFBookItem:Lcom/amazon/kindle/rendering/KRIFBookItem;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->close()V

    .line 535
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/amazon/krf/platform/KRFView;->dispose()V

    const/4 v2, 0x0

    .line 536
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFViewValid:Z

    .line 538
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mMarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    .line 539
    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mMarginalDataProvider:Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;

    if-eqz v2, :cond_2

    .line 540
    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->destroy()V

    .line 544
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mUserSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mBackupFooterContentType:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/UserSettingsController;->setFooterContentType(Ljava/lang/String;)V

    .line 545
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mTicrDocViewerEventHandler:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->tearDown(Z)V

    .line 546
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;

    sget-object v3, Lcom/amazon/kindle/recaps/TtsStateControl;->DESTROY_TTS:Lcom/amazon/kindle/recaps/TtsStateControl;

    invoke-direct {v2, v3, p0}, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;-><init>(Lcom/amazon/kindle/recaps/TtsStateControl;Lcom/amazon/kindle/contentprovider/TtsBookBridge;)V

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 547
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->touchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    goto :goto_1

    :cond_3
    const-string v0, "accessibilityManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :try_start_2
    const-string v0, "messageQueue"

    .line 546
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_5
    :try_start_3
    const-string v0, "mTicrDocViewerEventHandler"

    .line 545
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_6
    :try_start_4
    const-string v0, "mBackupFooterContentType"

    .line 544
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_7
    :try_start_5
    const-string v0, "mUserSettingsController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :cond_8
    :try_start_6
    const-string v0, "mKRFView"

    .line 535
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    :cond_9
    :try_start_7
    const-string v0, "mKRIFBookItem"

    .line 534
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1

    :catchall_0
    move-exception v0

    .line 549
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const-string v2, "close failed with reason"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mUserSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->areVolumeKeysPageControls()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string v0, "mKRFView"

    if-eqz p1, :cond_1

    .line 416
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_1

    .line 418
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 419
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFView;->goToPreviousPage()Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p1, :cond_3

    .line 421
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_3

    .line 423
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 424
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFView;->goToNextPage()Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    return v2

    :cond_5
    const-string p1, "mUserSettingsController"

    .line 415
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRIFBookItem:Lcom/amazon/kindle/rendering/KRIFBookItem;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mKRIFBookItem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getContentAvailabilityController()Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mContentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mContentAvailabilityController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentStartPosition()I
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Lcom/amazon/krf/platform/KRFBookInfo;->getFirstPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    const-string v1, "mKRFBook.bookInfo.getFir\u2026Position(mKRFReadingMode)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const-string v0, "mKRFReadingMode"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "mKRFBook"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public getCurrentPageStartPosition()J
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    const-string v0, "mKRFView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getDefaultReadingModeEquivalentPosition(I)Ljava/lang/Integer;
    .locals 5

    .line 441
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    const/4 v1, 0x0

    const-string v2, "mKRFBook"

    if-eqz v0, :cond_1

    int-to-long v3, p1

    invoke-interface {v0, v3, v4}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    invoke-interface {v0, p1, v1}, Lcom/amazon/krf/platform/KRFBook;->getEquivalentPositionInReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    const-string v0, "mKRFBook.getEquivalentPo\u2026ReadingMode.BOOK_DEFAULT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getKRFBook()Lcom/amazon/krf/platform/KRFBook;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mKRFBook"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getKRFView()Lcom/amazon/krf/platform/KRFView;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mKRFView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mSourceActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "mSourceActivity.resources"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "mPortraitLineSettings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeLineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    if-eqz v0, :cond_2

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "mLandscapeLineSettings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "mSourceActivity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getPageChangeDelegateInterface()Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPageChangeDelegate:Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mPageChangeDelegate"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getPageEndPosition()I
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    const-string v1, "mKRFView.positionRange"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    const-string v1, "mKRFView.positionRange.lastPosition"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const-string v0, "mKRFView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getPageStartPosition()I
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    const-string v1, "mKRFView.positionRange"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    const-string v1, "mKRFView.positionRange.firstPosition"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const-string v0, "mKRFView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mKRFReadingMode"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSettings()Lcom/amazon/krf/platform/ViewSettings;
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mSourceActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mSourceActivity.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "mSourceActivity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getTextBetweenPositions(II)Ljava/lang/String;
    .locals 2

    .line 659
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/amazon/kcp/util/DocViewerUtils;->getTextBetweenPositions(IIILcom/amazon/kindle/search/IKindleWordTokenIterator;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DocViewerUtils.getTextBe\u2026, getWordTokenIterator())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mTicrDocViewerEventHandler:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mTicrDocViewerEventHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getToc()Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getNavigationControl()Lcom/amazon/krf/platform/NavigationControl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const-string v2, "NavigationControl is null for the book"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 410
    :cond_0
    new-instance v2, Lcom/amazon/kindle/rendering/KRIFToc;

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-eqz v3, :cond_1

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/rendering/KRIFToc;-><init>(Lcom/amazon/krf/platform/NavigationControl;Lcom/amazon/krf/platform/Navigable;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)V

    return-object v2

    :cond_1
    const-string v0, "mKRFReadingMode"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "mKRFBook"

    .line 405
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public getTocForReadingMode()Lcom/amazon/kindle/krx/reader/ITableOfContents;
    .locals 2

    .line 399
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getToc()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    new-instance v1, Lcom/amazon/kindle/krx/reader/TableOfContents;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/krx/reader/TableOfContents;-><init>(Lcom/amazon/android/docviewer/IKindleTOC;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mUserSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mUserSettingsController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
    .locals 6

    .line 655
    new-instance v0, Lcom/amazon/kindle/search/KRIFWordIterator;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getContentStartPosition()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-eqz v5, :cond_0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/amazon/kindle/search/KRIFWordIterator;-><init>(Lcom/amazon/krf/platform/KRFBook;JLcom/amazon/krf/platform/ViewSettings$ReadingMode;)V

    return-object v0

    :cond_0
    const-string v0, "mKRFReadingMode"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "mKRFBook"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public goToNextPage()V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->goToNextPage()Z

    return-void

    :cond_0
    const-string v0, "mKRFView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public isNextPageAvailable()Z
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->canGoToNextPage()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "mKRFView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public isNotchSupportEnabled()Z
    .locals 1

    .line 300
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v0

    return v0
.end method

.method public navigateToPosition(I)V
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFBook:Lcom/amazon/krf/platform/KRFBook;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 433
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->goToPosition(Lcom/amazon/krf/platform/Position;)Z

    return-void

    :cond_0
    const-string p1, "mKRFView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "mKRFBook"

    .line 432
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 296
    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->applySettingsBasedOnConfiguration$default(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;Landroid/content/res/Configuration;ZLcom/amazon/krf/platform/Position;ILjava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 8

    .line 632
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFViewValid:Z

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->reloadCurrentPageMarginals()V

    .line 636
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mSourceActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mSourceActivity.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const-string v0, "mSourceActivity.resources.configuration"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->applySettingsBasedOnConfiguration$default(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;Landroid/content/res/Configuration;ZLcom/amazon/krf/platform/Position;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "mSourceActivity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "mKRFView"

    .line 634
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/BookReadingMode;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;Landroid/content/Context;Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;Ljava/lang/ref/WeakReference;Ljava/lang/Long;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/reader/BookReadingMode;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readingMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceActivity"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageChangeDelegate"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentView"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 142
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/content/BookFormat;->YJBINARY:Lcom/amazon/kindle/krx/content/BookFormat;

    if-eq v1, v2, :cond_0

    .line 143
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const-string p2, "Non YJ book is passed for openBook"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 148
    const-class v1, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/google/common/base/Enums;->getIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-eqz p2, :cond_5

    const-string v1, "getIfPresent(ReadingMode\u2026e).orNull()?: return null"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mKRFReadingMode:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    .line 151
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    const-class v1, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-interface {p2, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p2

    const-string v1, "PubSubMessageService.get\u2026ewController::class.java)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 152
    iput-object p4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mSourceActivity:Landroid/app/Activity;

    .line 153
    iput-object p7, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mParentView:Ljava/lang/ref/WeakReference;

    .line 154
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string p4, "Utils.getFactory()"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    const-string p4, "Utils.getFactory().userSettingsController"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mUserSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    .line 155
    iput-object p6, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPageChangeDelegate:Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;

    .line 164
    iget-object p4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mSourceActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p6, "mSourceActivity"

    if-eqz p4, :cond_4

    const-string p7, "mUserSettingsController"

    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {p2}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 165
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mSourceActivity:Landroid/app/Activity;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    const-string p4, "mSourceActivity.application"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "mSourceActivity.application.applicationContext"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mContext:Landroid/content/Context;

    .line 166
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->initAccessibilityManager()V

    .line 167
    invoke-direct {p0, p5, p3, p1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->handleReaderActivity(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 172
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->colorModeToColorThemes:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mUserSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 173
    invoke-static {p1}, Lcom/amazon/krf/platform/theme/ColorThemeRepository;->getColorThemeByName(Ljava/lang/String;)Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object p1

    .line 174
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mPortraitViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2, p1}, Lcom/amazon/krf/platform/ViewSettings;->setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V

    .line 175
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mLandscapeViewSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {p2, p1}, Lcom/amazon/krf/platform/ViewSettings;->setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V

    .line 177
    invoke-direct {p0, p8}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->createBookView(Ljava/lang/Long;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 172
    :cond_1
    invoke-static {p7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 165
    :cond_2
    :try_start_2
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 164
    :cond_3
    :try_start_3
    invoke-static {p7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    :try_start_4
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_5
    return-object v0

    :catchall_0
    move-exception p1

    .line 179
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->TAG:Ljava/lang/String;

    const-string p3, "openBook failed with reason"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public setTTSReaderNavigationListener(Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;)V
    .locals 1

    const-string v0, "navigationListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->mNavigationListener:Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->setTtsReaderNavigationListener(Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;)V

    return-void

    :cond_0
    const-string p1, "mNavigationListener"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public startTTS()V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;

    sget-object v2, Lcom/amazon/kindle/recaps/TtsStateControl;->START_TTS:Lcom/amazon/kindle/recaps/TtsStateControl;

    invoke-direct {v1, v2, p0}, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;-><init>(Lcom/amazon/kindle/recaps/TtsStateControl;Lcom/amazon/kindle/contentprovider/TtsBookBridge;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void

    :cond_0
    const-string v0, "messageQueue"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
